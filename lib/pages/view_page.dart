import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/view_bloc.dart';
import 'package:goerp/model/category_list_model.dart';
import 'package:goerp/service/view_page_service.dart';
import 'package:goerp/state/view_state.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import '../bloc/approve_bloc.dart';
import '../model/view_page_model.dart';
import '../service/category_list_service.dart';

class ViewPage extends StatefulWidget {
   const ViewPage( this.model,   { Key? key}) : super(key: key);

  final CategoryListModel model;

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {

  final String formatted = DateFormat('dd-MMM-yy').format(DateTime.now());

  late final ViewBloc bloc;

  final approveController = TextEditingController();

  @override
  void initState() {
    final viewPageService =
    Provider.of<ViewPageService>(context, listen: false);
    final categoryListService = Provider.of<CategoryListService>(context, listen:  false);
    bloc = ViewBloc(viewPageService, categoryListService);
    bloc.init(widget.model.po_no, widget.model.docName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: const AppTopBar(),
      body: SafeArea(
          child: _buildBody()
      ),
    );
  }

  _buildBody() {
    return BlocConsumer<ViewBloc, ViewState>(
      bloc: bloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(List<ViewPageModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

 Widget _buildContent(List<ViewPageModel> viewList){
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 15.dw, left: 15.dw, right: 15.dw),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              _buildTextBold(title: widget.model.docName),
              _buildTextBold(title: widget.model.po_no),
            ],
          ),
        ),
        Expanded(
            child: SafeArea(
              child: ListView.builder(
                itemCount: viewList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _buildCard(viewList[index])
                    );
                  }),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              String docNo = widget.model.po_no;
              String amdNo = viewList[0].doc_amd_no;
              String docAppDt = widget.model.po_dt;
              String docAppStatus = widget.model.po_status;
              String docAppType = viewList[0].docType;

              openDialog(docNo,amdNo, docAppDt, docAppStatus, docAppType);
            },
            child: Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xffB09EFF),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                  child: Text(
                    "APPROVE / REVERT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        )
      ],
    );
  }

  _buildCard(ViewPageModel model){
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          _buildContainer(heading: "Product Code ", title: model.item_cd),
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   child: Row(
          //     mainAxisAlignment:
          //     MainAxisAlignment.spaceBetween,
          //     children: [
          //       _buildText(title: model.docName),
          //       _buildText(title: model.item_cd)
          //     ],
          //   ),
          // ),
          Container(
            height: 1,
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
          ),
          _buildContainer(heading: "Product Name ", title: model.item_desc),
          _buildContainer(heading: "Quantity", title: model.doc_qty),
          _buildContainer(heading: "Rate", title: model.price.toString()),
          _buildContainer(heading: "Remark", title: model.remark ?? ""),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.red.shade800),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                _buildHeading(title: "Amount"),
                _buildHeading(title: model.amount)
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildHeading({required String title}){
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black),
    );
  }

  _buildContainer({required String heading, required String title}){
    return  Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        heading + "          :  ",
        maxLines: 4,
        style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.dw),
      ),
      Expanded(
        child: Text(
          title,
          maxLines: 8,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.dw),
        ),
      )

        ],
      ),
    );
  }

  _buildTextBold({required String title}){
    return  Text( title,
      overflow: TextOverflow.ellipsis,
      style:  TextStyle(fontSize: 18.dw, fontWeight: FontWeight.bold),
    );
  }

  Future openDialog(String docNo, String amdNo,String docAppDt, String docAppStatus, String docAppType) => showDialog(
      context: context,
      builder: (context) => Dialog(
          elevation: 8.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: TextField(
                            maxLines: null,
                            controller: approveController,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration.collapsed(
                              hintText: "  Enter Your Remark Here",
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              final bloc  = BlocProvider.of<ApproveRevertBloc>(context);
                              await bloc.callService(docNo,amdNo,docAppDt,approveController.text, docAppStatus, widget.model.docType,widget.model.unit_cd);
                              // await bloc.approve(widget.model, approveController.text);
                              final state = bloc.state;
                              if(state.isSuccess){
                                Navigator.pop(context);
                                Navigator.pop(context, true);
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Document Approved successfully")));
                              } else if(state.error != null){
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error!)));
                              }
                            },
                            child: BlocBuilder<ApproveRevertBloc, ApproveRevertState>(
                              bloc: BlocProvider.of<ApproveRevertBloc>(context),
                              builder: (context, state) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if(state.isLoading) const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: CupertinoActivityIndicator(),
                                    ),
                                    const Text(
                                      "Approve",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  ],
                                );
                              }
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightGreen,
                                minimumSize: const Size(40, 30),
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                final bloc  = BlocProvider.of<ApproveRevertBloc>(context);
                              //  await bloc.approve(widget.model, approveController.text);
                                final state = bloc.state;
                                if(state.isSuccess){
                                  Navigator.pop(context);
                                } else if(state.error != null){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error!)));
                                }
                              },
                            child: const Text(
                              "Revert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                minimumSize: const Size(50, 30),
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: -50,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Image.asset(
                        "assets/terms_white_logo.png",
                        scale: 8,
                      ),
                      radius: 40,
                    ))
              ],
            ),
          )));
}

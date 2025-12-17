import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/each_Category_list_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/category_list_model.dart';
import 'package:goerp/model/unitlist_model.dart';
import 'package:goerp/pages/view_page.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import '../bloc/approve_bloc.dart';
import '../bloc/login_bloc.dart';
import '../bloc/unit_list_cubit.dart';
import '../service/category_list_service.dart';
import '../service/login_service.dart';
import '../state/category_list_state.dart';
import '../widgets/searchfield.dart';

class PurchaseOrder extends StatefulWidget {
  const PurchaseOrder(
      {required this.docType,
        required this.docName,
        required this.model,
        required this.unit,
        Key? key})
      : super(key: key);
  final CategoryListModel model;

 final String docType, docName, unit;

  @override
  _PurchaseOrderState createState() => _PurchaseOrderState();
}

class _PurchaseOrderState extends State<PurchaseOrder> {
  final String formatted = DateFormat('dd-MMM-yy').format(DateTime.now());

  late final EachCategoryListBloc categoryListBloc;
  late final LoginService loginService;
  late final LogInPageBloc logInPageBloc;
  final approveController = TextEditingController();
  late final UnitListCubit unitListCubit;

  ValueNotifier<String> unitName = ValueNotifier("Unit ");

  @override
  void initState() {
    super.initState();
    final categoryListService = Provider.of<CategoryListService>(context, listen: false);
    loginService = Provider.of<LoginService>(context, listen: false);
    categoryListBloc = EachCategoryListBloc(categoryListService, loginService);
    logInPageBloc = LogInPageBloc(loginService);
    categoryListBloc.fetchData(widget.docType,widget.unit);
    unitListCubit = UnitListCubit(loginService);
    unitName.value = widget.unit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppTopBar(),
        body: WillPopScope(
          onWillPop: () async {
            //Navigator.pushNamed(context, MyRoutes.MyNavigation);
            return true;
          },
          child: SafeArea(child: _buildBody()),
        ));
  }

  _buildBody() {
    return BlocConsumer<EachCategoryListBloc, CategoryListState>(
      bloc: categoryListBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __, unitCode) => _buildContent(form, unitCode));
      },
    );
  }

  Widget _buildLoading(List<CategoryListModel> model, UnitListModel unitListModel) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<CategoryListModel> categoryList, UnitListModel unitListModel) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(8.dw),
            child: Text(
              widget.docName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.dw),
            )),
        _buildDialogBox(),
        SearchField(
            onSearchChanged: categoryListBloc.filterBasedOn,
            hintText: "Search"),
        if (categoryList.isEmpty) const Text("No Data"),
        if (categoryList.isNotEmpty)
          Expanded(
            child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: categoryList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: _buildCard(categoryList[index]),);
                }),
          )
      ],
    );
  }

  _buildCard(CategoryListModel model) {
    return Card(
      elevation: 8.dw,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.dw)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      minimumSize: Size(80.dw, 45.dh),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.dw))),
                  child: Row(
                    children: [
                       Text(
                        "View  ",
                        style: TextStyle(
                            fontSize: 17.dw,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Image.asset(
                        "assets/images/right-arrow-2.png",
                        scale: 20.dw,
                      )
                    ],
                  ),
                  onPressed: () async {
                    final shouldInit =
                        await  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewPage(model)),
                    ).whenComplete(() => categoryListBloc.fetchData(widget.docType,widget.unit)) ;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.dw),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffB09EFF),
                      minimumSize: Size(80.dw, 45.dh),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.dw))),
                  child: Text(
                    "Approve/ Revert",
                    style: TextStyle(
                        fontSize: 17.dw,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    String docNo = model.po_no;
                    String amdNo = model.amd_no;
                    String docAppDt = model.po_dt;
                    String docAppStatus = model.po_status;
                    String docAppType = widget.docType;

                    openDialog(docNo,amdNo, docAppDt, docAppStatus, docAppType);
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8.dw),
            height: 1.0,
            color: Colors.black,
          ),
          SizedBox(height: 10.dw),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Date"),
              _buildcolon(),
              _buildText(title: model.po_dt),
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "DOC Name"),
              _buildcolon(),
              _buildText(title: model.docName),
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBoldText(title: "Number"),
              _buildcolon(),
              _buildText(title: model.po_no)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBoldText(title: "Amd Number"),
              _buildcolon(),
              _buildText(title: model.amd_no)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBoldText(title: "Stage"),
              _buildcolon(),
              _buildText(title: model.po_status)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Supplier Name"),
              _buildcolon(),
              _buildText(title: model.name)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Consignee"),
              _buildcolon(),
              _buildText(title: model.consignee)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Remark"),
              _buildcolon(),
              _buildText(title: model.remark)
            ],
          ),
          SizedBox(height: 10.dw),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Entered By"),
              _buildcolon(),
              _buildText(title: model.entered_by)
            ],
          ),
          SizedBox(height: 10.dw),
          Container(
            padding: EdgeInsets.all(15.dw),
            decoration: BoxDecoration(
                color: Colors.red.shade800,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.dw),
                    bottomLeft: Radius.circular(10.dh))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildAmount(title: "Amount"),
                _buildAmount(title: model.po_value.toString())
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildBoldText({required String title}) {
    return Container(
      width: 150.dw,
      padding: EdgeInsets.only(left: 10.dw),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: TextStyle(fontSize: 17.dw, fontWeight: FontWeight.w600),
      ),
    );
  }

  _buildcolon() {
    return const Text(":");
  }

  _buildText({required String title}) {
    return Expanded(
     // width: 230.dw,
     // padding: EdgeInsets.only(left: 20.dw,),
      child: Padding(
        padding:  EdgeInsets.only(left: 8.0.dw),
        child: Text(
          title,
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 17.dw,),
        ),
      ),
    );
  }

  _buildAmount({required String title}) {
    return Text(
      title,
      style:  TextStyle(
          fontSize: 18.dw, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  _buildDialogBox() {
    return InkWell(
      onTap: () async {

       await unitListCubit.fetchUnitList(empCd);
        _showUnitDialogue();
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Container(
          padding: EdgeInsets.only(
              left: 10.dw, right: 10.dw, top: 10.dh, bottom: 10.dh),
          width: ScreenSizeConfig.getFullWidth / 1,
          height: 60.dh,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.black, width: 2.dw),
              borderRadius: BorderRadius.circular(10.dw)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValueListenableBuilder<String>(
                valueListenable: unitName,
                builder: (context, value, child) => Text(
                  unitName.value,
                ),
              ),
              const Icon(Icons.apartment)
            ],
          ),
        ),
      ),
    );
  }

  //UNit LIst
  Future<bool> _showUnitDialogue() async {
    // print(data);
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: BlocBuilder<UnitListCubit, List<UnitListModel>>(
                bloc: unitListCubit,
                builder: (context, data) {
                  return SizedBox(
                    width: 100.dw,
                    height: 200.dh,
                    child: ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final unitListData = data[index];
                          return InkWell(
                            onTap: () {
                              categoryListBloc.fetchData(widget.docType,unitListData.unitcode, unitListData,);
                              Navigator.pop(context, true);
                              unitName.value = unitListData.name;
                            },
                            child: Card(
                              elevation: 10,
                              child: Text(
                                unitListData.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.dw,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }),
          );
        }
    )
        ??
        false;
  }

  Future openDialog(String docNo, String amdNo,String docAppDt, String docAppStatus, String docAppType, ) => showDialog(
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
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.only(bottom: 12.0.dw,left: 8.dw, right: 8.dw),
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
                             //  final bloc = BlocProvider.of<ApproveRevertBloc>(context);
                             // // await bloc.approve(widget.model, approveController.text);
                             //  await bloc.callService(docNo,amdNo,docAppDt,approveController.text, docAppStatus, widget.docType,widget.unit );
                             //  final state = bloc.state;
                             //  if (state.isSuccess) {
                             //    Navigator.pop(context);
                             //    categoryListBloc.fetchData(widget.docType,widget.unit,);
                             //  } else if (state.error != null) {
                             //    ScaffoldMessenger.of(context).showSnackBar(
                             //        SnackBar(content: Text(state.error!)));
                             //  }

                              final bloc  = BlocProvider.of<ApproveRevertBloc>(context);
                              await bloc.callService(docNo,amdNo,docAppDt,approveController.text, docAppStatus, widget.model.docType,widget.model.unit_cd);
                              // await bloc.approve(widget.model, approveController.text);
                              final state = bloc.state;
                              if(state.isSuccess){
                                Navigator.pop(context);
                                categoryListBloc.fetchData(widget.docType,widget.unit,);
                               // Navigator.pop(context, true);
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Document Approved successfully")));
                              } else if(state.error != null){
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error!)));
                              }
                            },
                            child: BlocBuilder<ApproveRevertBloc,
                                ApproveRevertState>(
                                bloc:
                                BlocProvider.of<ApproveRevertBloc>(context),
                                builder: (context, state) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (state.isLoading)
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: CupertinoActivityIndicator(),
                                        ),
                                      const Text(
                                        "Approve",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  );
                                }),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightGreen,
                                minimumSize: const Size(40, 30),
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                          ),
                          // ElevatedButton(
                          //   onPressed: () async {
                          //     final bloc =
                          //     BlocProvider.of<ApproveRevertBloc>(context);
                          //     await bloc.callService(docNo,amdNo,docAppDt,approveController.text, docAppStatus, widget.docType,widget.unit);
                          //     //  await bloc.approve(widget.model, approveController.text);
                          //     final state = bloc.state;
                          //     if (state.isSuccess) {
                          //       Navigator.pop(context);
                          //     } else if (state.error != null) {
                          //       ScaffoldMessenger.of(context).showSnackBar(
                          //           SnackBar(content: Text(state.error!)));
                          //     }
                          //   },
                          //   child: const Text(
                          //     "Revert",
                          //     style: TextStyle(
                          //         fontWeight: FontWeight.bold, fontSize: 18),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //       backgroundColor: Colors.redAccent,
                          //       minimumSize: const Size(50, 30),
                          //       elevation: 8.0,
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8.0))),
                          // ),
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
                        "assets/images/erp.png",
                        scale: 9,
                      ),
                      radius: 40,
                    ))
              ],
            ),
          )));
}

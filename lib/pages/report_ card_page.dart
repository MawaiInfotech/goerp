import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/model/report_card_model.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/reports_card.dart';
import 'package:goerp/state/report_card_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:goerp/widgets/searchfield.dart';
import '../bloc/report_card_bloc.dart';
import '../model/unitlist_model.dart';
import '../themes/app_colors.dart';


class ReportCardpage extends StatefulWidget {
   const ReportCardpage(this.fileId,{Key? key}) : super(key: key);

   final String fileId;

  @override
  State<ReportCardpage> createState() => _ReportCardpageState();
}

class _ReportCardpageState extends State<ReportCardpage> {

  late final ReportCardBloc bloc;

  late final LoginService loginService;

  @override
  void initState() {
    final reportCardService = Provider.of<ReportCardService>(context, listen: false);
    loginService = Provider.of<LoginService>(context, listen: false);
    bloc = ReportCardBloc(reportCardService, loginService);
    bloc.init(widget.fileId);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppTopBar(),
      extendBody: true,
      body: SafeArea(child: _buildBody()),
    );
  }

  _buildBody() {
    return BlocConsumer<ReportCardBloc, ReportCardState>(
      bloc: bloc,
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

  Widget _buildLoading(List<ReportCardModel> model,UnitListModel unitListModel) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<ReportCardModel> reportCardList, UnitListModel unitListModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(8),
            child: Text(bloc.reportName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
        _buildDialogBox(),
        SearchField(
            onSearchChanged: bloc.filterBasedOn,
            hintText: "Search"),
        if(reportCardList.isEmpty)const Text("No Data"),
        if(reportCardList.isNotEmpty)
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(8.dw),
            shrinkWrap: true,
            children: reportCardList.map((model) => _buildCard(model)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCard(ReportCardModel model) {
    return Card(
    //  color: const Color(0xffE5ECFF),
      elevation: 10.0.dw,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 10,),
          Visibility(
            visible: model.heading1 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading1),
                _buildcolon(),
                _buildText(title: model.itemCode)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Visibility(
            visible: model.heading2 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading2),
                _buildcolon(),
                _buildText(title: model.itemDescription)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Visibility(
            visible: model.heading3 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading3 ),
                _buildcolon(),
                _buildText(title: model.itemType)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Visibility(
            visible: model.heading4 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading4),
                _buildcolon(),
                _buildText(title: model.Uom)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Visibility(
            visible: model.heading5 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading5),
                _buildcolon(),
                _buildText(title: model.level)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Visibility(
            visible:  model.heading6 == "" ? false : true,
            child: Row(
              children: [
                _buildHeadingText(title: model.heading6 ),
                _buildcolon(),
                _buildText(title: model.stock)
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  _buildDialogBox() {
    return InkWell(
      onTap: () async {
        try {
          _showUnitDialogue();
        } catch (error) {

        }
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
              Text(
                bloc.state.unitListModel.unitcode.isEmpty ? "Unit" : bloc.state.unitListModel.name,
              // "Unit",
                style: const TextStyle(fontSize: 15),
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
    final data = loginService.getUnitNumbers;
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: SizedBox(
                width: 100.dw,
                height: 200.dh,
                child: ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final unitListData = data[index];
                      return InkWell(
                        onTap: () {
                          bloc.init( widget.fileId, unitListData);
                          Navigator.pop(context, true);
                        },
                        child: Card(
                          elevation: 10,
                          child: Text(
                            unitListData.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }),
              ));
        }) ??
        false;
  }

  _buildHeadingText({required String title}) {
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
    return Container(
      width: 230.dw,
      padding: EdgeInsets.only(left: 20.dw,),
      child: Text(
        title,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 17.dw,),
      ),
    );
  }
}

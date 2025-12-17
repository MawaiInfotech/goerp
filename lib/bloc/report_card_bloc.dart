import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/report_card_model.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/reports_card.dart';
import 'package:goerp/state/report_card_state.dart';

import '../model/unitlist_model.dart';

class ReportCardBloc extends Cubit<ReportCardState> {
  ReportCardBloc(this.reportCardService, this.loginService)
      : super(ReportCardState.initial());

  final ReportCardService reportCardService;
  final LoginService loginService;

  var _reportList = <ReportCardModel>[];

  String reportName = "";

  void init(String fileId, [UnitListModel? unitListModel]) async {

    //final unit_cd = unitCode ?? loginService.getUserEntry.unitCode;

   // final unit_model = unitListModel ?? loginService.getnitListModelFromEntry;

    emit(ReportCardState.loading(state.reportCardList,state.unitListModel));
    final reportList = await reportCardService.getReportList(fileId, unitCd) ;
    log("$reportList");
    _reportList = reportList;
    if(reportName.isEmpty && _reportList.isNotEmpty) reportName = _reportList[0].reportName;
    emit(ReportCardState.content(reportList, state.unitListModel));
  }

  void filterBasedOn(String query){
    if(query.isEmpty){
      emit(ReportCardState.content(_reportList, state.unitListModel));
    }
    final filteredComplaints = <ReportCardModel>[];
    for(ReportCardModel complaint in _reportList){
      if(complaint.isSearched(query)) filteredComplaints.add(complaint);
    }
    emit(ReportCardState.content(filteredComplaints, state.unitListModel));
  }


}
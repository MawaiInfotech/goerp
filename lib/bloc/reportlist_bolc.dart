import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/reportlist_service.dart';
import 'package:goerp/state/reportlist_state.dart';


class ReportListBloc extends Cubit<ReportListState> {
  ReportListBloc(this.reportListService, this.loginService)
      : super(ReportListState.initial());

  final ReportListService reportListService;
  final LoginService loginService;

  void init({required String modules, required String filetp}) async {
  //  final userId = loginService.getUserEntry.userId;
    emit(ReportListState.loading(state.reportDetailList));
    final reportList = await reportListService.getReportList(userId, modules, filetp);
    emit(ReportListState.content(reportList));
  }

}
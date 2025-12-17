import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/report_service.dart';
import 'package:goerp/state/report_state.dart';


class ReportBloc extends Cubit<ReportState> {
  ReportBloc(this.reportService, this.loginService)
      : super(ReportState.initial());

  final ReportService reportService;
  final LoginService loginService;

  void init() async {

  //  final userId = loginService.getUserEntry.userId;
    emit(ReportState.loading(state.reportList));
    final reportList = await reportService.getReportList(userId) ;
    emit(ReportState.content(reportList));
  }

}
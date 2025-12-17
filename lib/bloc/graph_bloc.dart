import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/graph_service.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/report_service.dart';
import 'package:goerp/state/graph_state.dart';

class GraphBloc extends Cubit<GraphState> {
  GraphBloc(this.reportService, this.graphService, this.loginService)
      : super(GraphState.initial());

  final ReportService reportService;
  final GraphService graphService;
  final LoginService loginService;

  String GraphName = "";

  void init(String fileId) async {
    // final unitCode = loginService.getUserEntry.unitCode;
    emit(GraphState.loading(state.graphList));
    final graph = await graphService.getGraphList(fileId, unitCd);
    emit(GraphState.content(graph));
  }

}
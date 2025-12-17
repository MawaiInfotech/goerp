import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/complaint_history_state.dart';

import '../errors/api_error.dart';

class ComplaintHistoryBloc extends Cubit<ComplaintHistoryState>{
  ComplaintHistoryBloc(this.breakdownService) : super(ComplaintHistoryState.initial());

  final BreakdownService breakdownService;

  Future<void> init(String unitCode, String fromDate,String toDate, String locCd, String machineCd,String status)async{
    emit(ComplaintHistoryState.loading(state.complaintHistoryModel));
    try{
      final chList = await breakdownService.getComplaintHistory(unitCode, fromDate, toDate, locCd, machineCd,status);
      emit(ComplaintHistoryState.content(chList!));
    }on ApiError catch(error){
      emit(ComplaintHistoryState.failed(state.complaintHistoryModel,  error.message));
    }
  }
}
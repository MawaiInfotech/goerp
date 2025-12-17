import 'package:bloc/bloc.dart';
import 'package:goerp/state/submit_complaint_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';



class SubmitHandoverBloc extends Cubit<SubmitComplaintState>{
  SubmitHandoverBloc(this.breakdownService): super(SubmitComplaintState.initial());

  BreakdownService breakdownService;


  Future<void> init(String complainNo,int compId,  String handoverDate, String remarks, String acceptedBy)async{
    try{
      emit(SubmitComplaintState.loading(state.submitComplaintModel));
      final message = await breakdownService.submitHandoverDetails(complainNo, compId, handoverDate, remarks, acceptedBy);
      emit(SubmitComplaintState.success(state.submitComplaintModel, message));
    }on ApiError catch(error){
      emit(SubmitComplaintState.failed(state.submitComplaintModel,  error.message));
    }
  }
}
import 'package:bloc/bloc.dart';
import 'package:goerp/state/submit_complaint_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';



class SubmitBreakDetailsBloc extends Cubit<SubmitComplaintState>{
  SubmitBreakDetailsBloc(this.breakdownService): super(SubmitComplaintState.initial());

  BreakdownService breakdownService;


  Future<void> init(Map<String, dynamic> details)async{
    try{
      emit(SubmitComplaintState.loading(state.submitComplaintModel));
      final message = await breakdownService.submitRectificationDetails(details);
      emit(SubmitComplaintState.success(state.submitComplaintModel, message));
    }on ApiError catch(error){
      emit(SubmitComplaintState.failed(state.submitComplaintModel,  error.message));
    }
  }
}
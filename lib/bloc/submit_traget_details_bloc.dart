import 'package:bloc/bloc.dart';
import 'package:goerp/state/submit_complaint_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';



class SubmitTargetDetailsBloc extends Cubit<SubmitComplaintState>{
  SubmitTargetDetailsBloc(this.breakdownService): super(SubmitComplaintState.initial());

  BreakdownService breakdownService;


  Future<void> init(String complainNo, String targetEntryDate, String remarks, String unitCd, int compId)async{
    try{
      emit(SubmitComplaintState.loading(state.submitComplaintModel));
      final message = await breakdownService.submitTargetDetails(complainNo, targetEntryDate, remarks, unitCd, compId);
      emit(SubmitComplaintState.success(state.submitComplaintModel, message));
    }on ApiError catch(error){
      emit(SubmitComplaintState.failed(state.submitComplaintModel,  error.message));
    }
  }
}
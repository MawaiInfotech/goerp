import 'package:bloc/bloc.dart';
import 'package:goerp/state/submit_complaint_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';



class SubmitComplaintBloc extends Cubit<SubmitComplaintState>{
  SubmitComplaintBloc(this.breakdownService): super(SubmitComplaintState.initial());

  BreakdownService breakdownService;


  Future<void> init(String unitCd, String machineCode, String compDtTime,String locationCd, String details,String breakDownDtTime, String userId,file,)async{
    try{
      emit(SubmitComplaintState.loading(state.submitComplaintModel));
      final message = await breakdownService.submitComplaint(unitCd, machineCode, compDtTime, locationCd, details, breakDownDtTime, userId, file);
      emit(SubmitComplaintState.success(state.submitComplaintModel, message));
    }on ApiError catch(error){
      emit(SubmitComplaintState.failed(state.submitComplaintModel,  error.message));
    }
  }
}
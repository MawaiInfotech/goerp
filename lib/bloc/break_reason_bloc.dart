import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/state/break_reason_state.dart';
import 'package:goerp/state/machine_details_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';


class BreakReasonBloc extends Cubit<BreakReasonState>{
  BreakReasonBloc(this.breakdownService,) : super(BreakReasonState.initial());

  BreakdownService breakdownService;

  Future<void> init(String breakType)async{
    emit(BreakReasonState.loading(state.breakReasonModel));
    try{
      final list = await breakdownService.getBreakReasonList(breakType);
      emit(BreakReasonState.content(list));
    }on ApiError catch(error){
      emit(BreakReasonState.failed(state.breakReasonModel,  error.message));
    }
  }

  void clear() {
    emit(const BreakReasonState.loading([]));
  }

}
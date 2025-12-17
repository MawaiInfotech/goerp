import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/state/break_reason_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';
import '../state/rectified_by_state.dart';


class RectifiedByBloc extends Cubit<RectifiedByState>{
  RectifiedByBloc(this.breakdownService,) : super(RectifiedByState.initial());

  BreakdownService breakdownService;

  Future<void> init()async{
    emit(RectifiedByState.loading(state.rectifiedByModel));
    try{
      final list = await breakdownService.getRectifiedByList();
      emit(RectifiedByState.content(list));
    }on ApiError catch(error){
      emit(RectifiedByState.failed(state.rectifiedByModel,  error.message));
    }
  }

  void clear() {
    emit(const RectifiedByState.loading([]));
  }

}
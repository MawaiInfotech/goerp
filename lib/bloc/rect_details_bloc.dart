import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/breakdown_details_state.dart';
import 'package:goerp/state/rect_details_state.dart';

import '../errors/api_error.dart';

class RectDetailsBloc extends Cubit<RectDetailsState>{
  RectDetailsBloc(this.breakdownService) : super(RectDetailsState.initial());

  final BreakdownService breakdownService;

  Future<void> init(String compId)async{
    emit(RectDetailsState.loading(state.rectDetailsModel));
    try{
      final list = await breakdownService.getRectDetailsData(compId);
      emit(RectDetailsState.content(list!));
    }on ApiError catch(error){
      emit(RectDetailsState.failed(state.rectDetailsModel,  error.message));
    }
  }
}
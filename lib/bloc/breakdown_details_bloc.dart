import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/breakdown_details_state.dart';

import '../errors/api_error.dart';

class BreakdownDetailsBloc extends Cubit<BreakdownDetailsState>{
  BreakdownDetailsBloc(this.breakdownService) : super(BreakdownDetailsState.initial());

  final BreakdownService breakdownService;

  Future<void> init(String unitCode)async{
    emit(BreakdownDetailsState.loading(state.breakdownDetailsModel));
    try{
      final breakdownList = await breakdownService.getBreakdownDetailsList(unitCode);
      emit(BreakdownDetailsState.content(breakdownList!));
    }on ApiError catch(error){
      emit(BreakdownDetailsState.failed(state.breakdownDetailsModel,  error.message));
    }
  }
}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/state/rectification_list_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';


class RectificationListBloc extends Cubit<RectificationListState>{
  RectificationListBloc(this.breakdownService,) : super(RectificationListState.initial());

  BreakdownService breakdownService;

  Future<void> init(String unitCd,String status)async{
    emit(RectificationListState.loading(state.rectificationListModel));
    try{
      final rectificationList = await breakdownService.getRectificationList(unitCd,status);
      emit(RectificationListState.content(rectificationList));
    }on ApiError catch(error){
      emit(RectificationListState.failed(state.rectificationListModel,  error.message));
    }
  }

  void clear() {
    emit(const RectificationListState.loading([]));
  }

}
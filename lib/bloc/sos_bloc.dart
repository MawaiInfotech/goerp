import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/category_list_service.dart';

import 'package:goerp/state/sos_state.dart';

class SosBloc extends Cubit<SosState> {
  SosBloc(this.categoryListService, )
      : super(SosState.initial());

  final CategoryListService categoryListService;



  Future<void> init(String status) async {
    // final unitCode = loginService.getUserEntry.unitCode;
    emit(SosState.loading(state.sosModel));
    final sos = await categoryListService.sosUpdate(status);
    emit(SosState.success(state.sosModel, sos));
  }

}
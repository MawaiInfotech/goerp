import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/model/unitlist_model.dart';
import '../errors/api_error.dart';
import '../service/login_service.dart';

class UnitListCubit extends Cubit<List<UnitListModel>> {
  UnitListCubit(this.loginService) : super([]);

  final LoginService loginService;

  Future<void> fetchUnitList(String userCode) async {
    try {
      await loginService.UserDetail("Admin");
     final unitList = await loginService.getUnitList();
     log(unitList.toString());
     emit(unitList!);
    }on ApiError catch (error) {
      throw error;
    }
  }

  Future<void> fetchUnitListBreakdown() async {
    try {
      await loginService.UserDetail("Admin");
      final unitList = await loginService.getUnitListBreakdown();
      log(unitList.toString());
      emit(unitList!);
    }on ApiError catch (error) {
      throw error;
    }
  }

}

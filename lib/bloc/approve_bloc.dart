import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/approve_service.dart';
import 'package:goerp/service/login_service.dart';
import '../model/category_list_model.dart';

class ApproveRevertState {
  final bool isLoading;
  final bool isSuccess;
  final String? message;
  final String? error;

  const ApproveRevertState(
      {this.isLoading = false, this.isSuccess = false,this.message, this.error});
}

class ApproveRevertBloc extends Cubit<ApproveRevertState> {
  ApproveRevertBloc(this.service, this.loginService)
      : super(const ApproveRevertState());
  final ApprovePageService service;
  final LoginService loginService;

  Future<void> callService(String docNo, String amdNo,String docAppDt,String message, String docAppStatus, String docAppType,String unitCode) async {
    emit(const ApproveRevertState(isLoading: true));
    try {
      await service.getApproveDetails(docNo, amdNo,empCd, docAppDt,message, docAppStatus, docAppType, unitCode, );
     // print(loginService.getUserEntry.userName);
      emit(ApproveRevertState(isLoading: false, isSuccess: true, message: message));
    } catch (error) {
      emit(ApproveRevertState(isLoading: false, isSuccess: false , error: error.toString()));
    }
  }

  // Future<void> approve(CategoryListModel model, String message) async =>
  //     await _callService(model, message);
  //
  // Future<void> revert(CategoryListModel model, String message) async =>
  //     await _callService(model, message);
}

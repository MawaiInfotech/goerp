import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/login_service.dart';
import '../errors/api_error.dart';
import '../state/login_state.dart';

class LogInPageBloc extends Cubit<LoginPageState> {
  LogInPageBloc(this.loginService) : super(LoginPageState.initial());

  final LoginService loginService;

  void getCompanyDetails() async {

    emit(LoginPageState.loading(state.form));

    try {

      final companyDetails =
      await loginService.getCompanyName();

      if (companyDetails != null) {

        emit(
          LoginPageState.content(
            state.form.copyWith(
              companyName: companyDetails,
            ),
          ),
        );

      }

    } on ApiError catch (error) {

      emit(
        LoginPageState.failed(
          state.form,
          error.message,
        ),
      );

    }
  }

  void updateUsername(String userName) => _updateAttributes(userName: userName);

  void updateunitCode(String unitCode) => _updateAttributes(unitCode: unitCode);

  void updatePassword(String password) => _updateAttributes(userPass: password);

  void _updateAttributes({String? userPass, String? userName, String? unitCode}) {
    emit(LoginPageState.loading(state.form));
    final form = state.form.copyWith(
      userPass: userPass ?? state.form.userPass,
      userName: userName ?? state.form.userName,
      unitCode: unitCode ?? state.form.unitCode,
    );
    // log(form.userName);
    emit(LoginPageState.content(form));
  }

  void logIn(bool isRememberMe) async {
    _validate();

    var form = state.form;

    if (form.errors.isNotEmpty) return;

    emit(LoginPageState.loading(form));
    try {
     // final userEntry = loginService.getUserEntry;

      await loginService.logIn(
          userPass: form.userPass,
          unitCode: form.unitCode,
          userName: form.userName,
          isRemembered: isRememberMe);
      emit(LoginPageState.success(form));
    } on ApiError catch (e) {
      emit(LoginPageState.failed(form, e.message));
    }
  }

  _validate() {

    var form = state.form;

    emit(LoginPageState.loading(form));
    final errors = <String, String?>{};
    if (form.userPass.isEmpty) {
      errors['password'] = 'Password can\'t be empty';
    }
    emit(LoginPageState.content(form.copyWith(errors: errors)));
  }
}

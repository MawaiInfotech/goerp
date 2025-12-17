import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/login_model.dart';

import '../model/companyname_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.loading(LoginModel form) = _Loading;
  const factory LoginPageState.content(LoginModel form) = _Content;
  const factory LoginPageState.success(LoginModel form) = _Success;
  const factory LoginPageState.failed(LoginModel form, String message) = _Failed;

  factory LoginPageState.initial() =>  LoginPageState.content(LoginModel(companyName: CompanyName()));
}

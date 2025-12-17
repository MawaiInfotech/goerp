import 'package:freezed_annotation/freezed_annotation.dart';

import 'companyname_model.dart';

part 'login_model.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: 'unit_cd') @Default('') String unitCode,
   required CompanyName companyName,
    @Default('') String userId,
    @Default('') String userName,
    @Default('') String userPass,
    @Default('') String Emp_Id,
    @Default('') String unit_cd,
    @Default({}) Map<String, String?> errors,
  }) = _LoginModel;
}
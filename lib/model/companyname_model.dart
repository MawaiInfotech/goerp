import 'package:freezed_annotation/freezed_annotation.dart';

part 'companyname_model.freezed.dart';
part 'companyname_model.g.dart';

@freezed
class CompanyName with _$CompanyName {
  const factory CompanyName({
    @JsonKey(name: 'comp_code') @Default(0) int companyCode,
    @JsonKey(name: 'comp_name')@Default('') String companyName,
    @JsonKey(name: 'image_compnay')@Default('') String companyImage,
    @Default({}) Map<String, String?> errors,
  }) = _CompanyName;

  factory CompanyName.fromJson(Map<String, dynamic> json) =>
      _$CompanyNameFromJson(json);

}
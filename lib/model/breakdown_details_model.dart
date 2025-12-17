import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/breakdown_reason_model.dart';
import 'package:goerp/model/rectification_type_model.dart';
import 'package:goerp/model/spare_code_model.dart';

part 'breakdown_details_model.g.dart';
part 'breakdown_details_model.freezed.dart';

@freezed
class BreakdownDetailsModel with _$BreakdownDetailsModel{
  const factory BreakdownDetailsModel({
    @Default(<RectificationTypeModel> []) List<RectificationTypeModel> recti_type,
    @Default(<BreakdownReasonModel> []) List<BreakdownReasonModel> break_type,
    @Default(<SpareCodeModel> []) List<SpareCodeModel> spare_cd,
  }) = _BreakdownDetailsModel;

  factory BreakdownDetailsModel.fromJson(Map<String, dynamic> json) => _$BreakdownDetailsModelFromJson(json);
}
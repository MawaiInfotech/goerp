import 'package:freezed_annotation/freezed_annotation.dart';

part 'breakdown_reason_model.g.dart';
part 'breakdown_reason_model.freezed.dart';

@freezed
class BreakdownReasonModel with _$BreakdownReasonModel{
  const factory BreakdownReasonModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "description") @Default("") String description,

  }) = _BreakdownReasonModel;

  factory BreakdownReasonModel.fromJson(Map<String, dynamic> json) => _$BreakdownReasonModelFromJson(json);
}
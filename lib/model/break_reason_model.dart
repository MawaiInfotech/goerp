import 'package:freezed_annotation/freezed_annotation.dart';

part 'break_reason_model.g.dart';
part 'break_reason_model.freezed.dart';

@freezed
class BreakReasonModel with _$BreakReasonModel{
  const factory BreakReasonModel({
    @JsonKey(name: "reason_code") @Default("") String code,
    @JsonKey(name: "description") @Default("") String description,
  }) = _BreakReasonModel;

  factory BreakReasonModel.fromJson(Map<String, dynamic> json) => _$BreakReasonModelFromJson(json);
}
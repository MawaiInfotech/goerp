import 'package:freezed_annotation/freezed_annotation.dart';

part 'rect_detail_break_reason_model.g.dart';
part 'rect_detail_break_reason_model.freezed.dart';

@freezed
class RectDetailBreakReasonModel with _$RectDetailBreakReasonModel{
  const factory RectDetailBreakReasonModel({
    @JsonKey(name: "breakdown_type") @Default("") String breakdown_type,
    @JsonKey(name: "reason_code") @Default("") String reason_code,
    @JsonKey(name: "remarks") @Default("") String remarks,
    @JsonKey(name: "breakdown_type_name") @Default("") String breakdown_type_name,

  }) = _RectDetailBreakReasonModel;

  factory RectDetailBreakReasonModel.fromJson(Map<String, dynamic> json) => _$RectDetailBreakReasonModelFromJson(json);
}
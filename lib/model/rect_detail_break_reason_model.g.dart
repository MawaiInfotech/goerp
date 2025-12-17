// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rect_detail_break_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RectDetailBreakReasonModelImpl _$$RectDetailBreakReasonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RectDetailBreakReasonModelImpl(
      breakdown_type: json['breakdown_type'] as String? ?? "",
      reason_code: json['reason_code'] as String? ?? "",
      remarks: json['remarks'] as String? ?? "",
      breakdown_type_name: json['breakdown_type_name'] as String? ?? "",
    );

Map<String, dynamic> _$$RectDetailBreakReasonModelImplToJson(
        _$RectDetailBreakReasonModelImpl instance) =>
    <String, dynamic>{
      'breakdown_type': instance.breakdown_type,
      'reason_code': instance.reason_code,
      'remarks': instance.remarks,
      'breakdown_type_name': instance.breakdown_type_name,
    };

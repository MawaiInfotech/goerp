// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreakReasonModelImpl _$$BreakReasonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BreakReasonModelImpl(
      code: json['reason_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$BreakReasonModelImplToJson(
        _$BreakReasonModelImpl instance) =>
    <String, dynamic>{
      'reason_code': instance.code,
      'description': instance.description,
    };

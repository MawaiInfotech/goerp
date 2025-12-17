// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breakdown_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreakdownDetailsModelImpl _$$BreakdownDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BreakdownDetailsModelImpl(
      recti_type: (json['recti_type'] as List<dynamic>?)
              ?.map((e) =>
                  RectificationTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RectificationTypeModel>[],
      break_type: (json['break_type'] as List<dynamic>?)
              ?.map((e) =>
                  BreakdownReasonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BreakdownReasonModel>[],
      spare_cd: (json['spare_cd'] as List<dynamic>?)
              ?.map((e) => SpareCodeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SpareCodeModel>[],
    );

Map<String, dynamic> _$$BreakdownDetailsModelImplToJson(
        _$BreakdownDetailsModelImpl instance) =>
    <String, dynamic>{
      'recti_type': instance.recti_type,
      'break_type': instance.break_type,
      'spare_cd': instance.spare_cd,
    };

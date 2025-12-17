// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rect_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RectDetailsModelImpl _$$RectDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RectDetailsModelImpl(
      rectification: json['rectification'] == null
          ? null
          : RectDetailMainDataModel.fromJson(
              json['rectification'] as Map<String, dynamic>),
      breakdown_reason: (json['breakdown_reason'] as List<dynamic>?)
              ?.map((e) => RectDetailBreakReasonModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <RectDetailBreakReasonModel>[],
      spare_parts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) =>
                  RectDetailSparePartModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RectDetailSparePartModel>[],
    );

Map<String, dynamic> _$$RectDetailsModelImplToJson(
        _$RectDetailsModelImpl instance) =>
    <String, dynamic>{
      'rectification': instance.rectification,
      'breakdown_reason': instance.breakdown_reason,
      'spare_parts': instance.spare_parts,
    };

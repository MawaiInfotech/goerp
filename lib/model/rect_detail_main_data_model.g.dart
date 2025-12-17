// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rect_detail_main_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RectDetailMainDataModelImpl _$$RectDetailMainDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RectDetailMainDataModelImpl(
      rectif_type: json['rectif_type'] as String? ?? "",
      rectification_date: json['rectification_date'] as String? ?? "",
      remarks: json['remarks'] as String? ?? "",
      rectified_by: json['rectified_by'] as String? ?? "",
      breakdown_reason: json['breakdown_reason'] as String? ?? "",
      action_taken: json['action_taken'] as String? ?? "",
      rect_entry_date: json['rect_entry_date'] as String? ?? "",
      rectif_type_name: json['rectif_type_name'] as String? ?? "",
      rectified_by_name: json['rectified_by_name'] as String? ?? "",
    );

Map<String, dynamic> _$$RectDetailMainDataModelImplToJson(
        _$RectDetailMainDataModelImpl instance) =>
    <String, dynamic>{
      'rectif_type': instance.rectif_type,
      'rectification_date': instance.rectification_date,
      'remarks': instance.remarks,
      'rectified_by': instance.rectified_by,
      'breakdown_reason': instance.breakdown_reason,
      'action_taken': instance.action_taken,
      'rect_entry_date': instance.rect_entry_date,
      'rectif_type_name': instance.rectif_type_name,
      'rectified_by_name': instance.rectified_by_name,
    };

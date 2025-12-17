// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApproveModelImpl _$$ApproveModelImplFromJson(Map<String, dynamic> json) =>
    _$ApproveModelImpl(
      po_no: json['po_no'] as String? ?? '',
      amd_no: (json['amd_no'] as num?)?.toInt() ?? 0,
      app_by: json['app_by'] as String? ?? '',
      app_dt: json['app_dt'] as String? ?? '',
      remarks: json['remarks'] as String? ?? '',
      app_stage: json['app_stage'] as String? ?? '',
      doc_type: json['doc_type'] as String? ?? '',
      unit_code: json['unit_code'] as String? ?? '',
      comp_code: json['comp_code'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ApproveModelImplToJson(_$ApproveModelImpl instance) =>
    <String, dynamic>{
      'po_no': instance.po_no,
      'amd_no': instance.amd_no,
      'app_by': instance.app_by,
      'app_dt': instance.app_dt,
      'remarks': instance.remarks,
      'app_stage': instance.app_stage,
      'doc_type': instance.doc_type,
      'unit_code': instance.unit_code,
      'comp_code': instance.comp_code,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'errors': instance.errors,
    };

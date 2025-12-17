// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_scanner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceScannerModelImpl _$$AttendanceScannerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceScannerModelImpl(
      empcode: json['empcode'] as String? ?? '',
      unit_cd: json['unit_cd'] as String? ?? '',
      created_by: json['created_by'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AttendanceScannerModelImplToJson(
        _$AttendanceScannerModelImpl instance) =>
    <String, dynamic>{
      'empcode': instance.empcode,
      'unit_cd': instance.unit_cd,
      'created_by': instance.created_by,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };

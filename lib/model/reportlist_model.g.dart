// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reportlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportListModelImpl _$$ReportListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportListModelImpl(
      fileId: json['file_id'] as String? ?? '',
      fileDisplayName: json['file_display_name'] as String? ?? '',
      module: json['rep_module'] as String? ?? '',
      fileType: json['file_type'] as String? ?? '',
      fileSeq: (json['file_seq'] as num?)?.toInt() ?? 0,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ReportListModelImplToJson(
        _$ReportListModelImpl instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_display_name': instance.fileDisplayName,
      'rep_module': instance.module,
      'file_type': instance.fileType,
      'file_seq': instance.fileSeq,
      'errors': instance.errors,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unitlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitListModelImpl _$$UnitListModelImplFromJson(Map<String, dynamic> json) =>
    _$UnitListModelImpl(
      userLineId: json['user_line_id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      unitcode: json['unitcode'] as String? ?? '',
      name: json['name'] as String? ?? '',
      comp_code: (json['comp_code'] as num?)?.toInt() ?? 0,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$UnitListModelImplToJson(_$UnitListModelImpl instance) =>
    <String, dynamic>{
      'user_line_id': instance.userLineId,
      'userId': instance.userId,
      'unitcode': instance.unitcode,
      'name': instance.name,
      'comp_code': instance.comp_code,
      'errors': instance.errors,
    };

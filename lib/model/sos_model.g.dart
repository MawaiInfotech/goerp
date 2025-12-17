// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SosModelImpl _$$SosModelImplFromJson(Map<String, dynamic> json) =>
    _$SosModelImpl(
      status: (json['status'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$SosModelImplToJson(_$SosModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

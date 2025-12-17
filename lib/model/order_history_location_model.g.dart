// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryLocationModelImpl _$$OrderHistoryLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryLocationModelImpl(
      locationCode: json['locat_code'] as String? ?? "",
      description: json['short_desc'] as String? ?? "",
    );

Map<String, dynamic> _$$OrderHistoryLocationModelImplToJson(
        _$OrderHistoryLocationModelImpl instance) =>
    <String, dynamic>{
      'locat_code': instance.locationCode,
      'short_desc': instance.description,
    };

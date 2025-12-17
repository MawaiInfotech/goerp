// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spare_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpareCodeModelImpl _$$SpareCodeModelImplFromJson(Map<String, dynamic> json) =>
    _$SpareCodeModelImpl(
      itemCode: json['item_cd'] as String? ?? "",
      description: json['item_desc'] as String? ?? "",
      itemType: json['item_type'] as String? ?? "",
    );

Map<String, dynamic> _$$SpareCodeModelImplToJson(
        _$SpareCodeModelImpl instance) =>
    <String, dynamic>{
      'item_cd': instance.itemCode,
      'item_desc': instance.description,
      'item_type': instance.itemType,
    };

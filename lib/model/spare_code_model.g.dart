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
      loc_cd: json['loc_cd'] as String? ?? "",
      closing: json['closing'] as String? ?? "",
      unit_cd: json['unit_cd'] as String? ?? "",
    );

Map<String, dynamic> _$$SpareCodeModelImplToJson(
        _$SpareCodeModelImpl instance) =>
    <String, dynamic>{
      'item_cd': instance.itemCode,
      'item_desc': instance.description,
      'item_type': instance.itemType,
      'loc_cd': instance.loc_cd,
      'closing': instance.closing,
      'unit_cd': instance.unit_cd,
    };

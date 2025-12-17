// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companyname_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyNameImpl _$$CompanyNameImplFromJson(Map<String, dynamic> json) =>
    _$CompanyNameImpl(
      companyCode: (json['comp_code'] as num?)?.toInt() ?? 0,
      companyName: json['comp_name'] as String? ?? '',
      companyImage: json['image_compnay'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CompanyNameImplToJson(_$CompanyNameImpl instance) =>
    <String, dynamic>{
      'comp_code': instance.companyCode,
      'comp_name': instance.companyName,
      'image_compnay': instance.companyImage,
      'errors': instance.errors,
    };

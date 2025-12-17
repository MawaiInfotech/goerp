// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineDetailsModelImpl _$$MachineDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineDetailsModelImpl(
      code: json['mach_code'] as String? ?? "",
      name: json['machine_name'] as String? ?? "",
      locationCode: json['locat_code'] as String? ?? "",
      locationName: json['location_name'] as String? ?? "",
      installationDate: json['installation_date'] as String? ?? "",
    );

Map<String, dynamic> _$$MachineDetailsModelImplToJson(
        _$MachineDetailsModelImpl instance) =>
    <String, dynamic>{
      'mach_code': instance.code,
      'machine_name': instance.name,
      'locat_code': instance.locationCode,
      'location_name': instance.locationName,
      'installation_date': instance.installationDate,
    };

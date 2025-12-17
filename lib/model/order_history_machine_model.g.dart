// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryMachineModelImpl _$$OrderHistoryMachineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryMachineModelImpl(
      machineCode: json['mach_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$OrderHistoryMachineModelImplToJson(
        _$OrderHistoryMachineModelImpl instance) =>
    <String, dynamic>{
      'mach_code': instance.machineCode,
      'description': instance.description,
    };

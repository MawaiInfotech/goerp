// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationMachineModelImpl _$$LocationMachineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationMachineModelImpl(
      location_list: (json['location_list'] as List<dynamic>?)
              ?.map((e) =>
                  OrderHistoryLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderHistoryLocationModel>[],
      machine_list: (json['machine_list'] as List<dynamic>?)
              ?.map((e) =>
                  OrderHistoryMachineModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderHistoryMachineModel>[],
    );

Map<String, dynamic> _$$LocationMachineModelImplToJson(
        _$LocationMachineModelImpl instance) =>
    <String, dynamic>{
      'location_list': instance.location_list,
      'machine_list': instance.machine_list,
    };

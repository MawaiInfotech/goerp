import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/order_history_location_model.dart';
import 'package:goerp/model/order_history_machine_model.dart';

part 'location_machine_model.g.dart';
part 'location_machine_model.freezed.dart';

@freezed
class LocationMachineModel with _$LocationMachineModel{
  const factory LocationMachineModel({
    @Default(<OrderHistoryLocationModel> []) List<OrderHistoryLocationModel> location_list,
    @Default(<OrderHistoryMachineModel> []) List<OrderHistoryMachineModel> machine_list,

  }) = _LocationMachineModel;

  factory LocationMachineModel.fromJson(Map<String, dynamic> json) => _$LocationMachineModelFromJson(json);
}
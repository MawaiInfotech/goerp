import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_machine_model.g.dart';
part 'order_history_machine_model.freezed.dart';

@freezed
class OrderHistoryMachineModel with _$OrderHistoryMachineModel{
  const factory OrderHistoryMachineModel({
    @JsonKey(name: "mach_code") @Default("") String machineCode,
    @JsonKey(name: "description") @Default("") String description,

  }) = _OrderHistoryMachineModel;

  factory OrderHistoryMachineModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryMachineModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/machine_details_model.dart';


part 'machine_details_state.freezed.dart';

@freezed
class MachineDetailsState with _$MachineDetailsState {
  const factory MachineDetailsState.loading(List<MachineDetailsModel> machineDetailsModel) =_Loading;
  const factory MachineDetailsState.content(List<MachineDetailsModel> machineDetailsModel) =_Content;
  const factory MachineDetailsState.success(List<MachineDetailsModel> machineDetailsModel) =_Success;
  const factory MachineDetailsState.failed( List<MachineDetailsModel> machineDetailsModel, message) = _Failed;

  factory MachineDetailsState.initial() => const MachineDetailsState.content([]);
}

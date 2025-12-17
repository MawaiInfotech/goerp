import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/location_machine_model.dart';


part 'location_machine_state.freezed.dart';

@freezed
class LocationMachineState with _$LocationMachineState {
  const factory LocationMachineState.loading(LocationMachineModel locationMachineModel) =_Loading;
  const factory LocationMachineState.content(LocationMachineModel locationMachineModel) =_Content;
  const factory LocationMachineState.success(LocationMachineModel locationMachineModel) =_Success;
  const factory LocationMachineState.failed( LocationMachineModel locationMachineModel, message) = _Failed;

  factory LocationMachineState.initial() => const LocationMachineState.content(LocationMachineModel());
}

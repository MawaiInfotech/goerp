import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_details_model.g.dart';
part 'machine_details_model.freezed.dart';

@freezed
class MachineDetailsModel with _$MachineDetailsModel{
  const factory MachineDetailsModel({
    @JsonKey(name: "mach_code") @Default("") String code,
    @JsonKey(name: "machine_name") @Default("") String name,
    @JsonKey(name: "locat_code") @Default("") String locationCode,
    @JsonKey(name: "location_name") @Default("") String locationName,
    @JsonKey(name: "installation_date") @Default("") String installationDate,
  }) = _MachineDetailsModel;

  factory MachineDetailsModel.fromJson(Map<String, dynamic> json) => _$MachineDetailsModelFromJson(json);
}
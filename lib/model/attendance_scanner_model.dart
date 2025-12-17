import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_scanner_model.freezed.dart';
part 'attendance_scanner_model.g.dart';

@freezed
class AttendanceScannerModel with _$AttendanceScannerModel {
  const factory AttendanceScannerModel({
    @Default('') String empcode,
    @Default('') String unit_cd,
    @Default('') String created_by,
    @Default('') String updated_at,
    @Default('') String created_at,
    @Default(0) int id,

  }) = _AttendanceScannerModel;

  factory AttendanceScannerModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceScannerModelFromJson(json);

}
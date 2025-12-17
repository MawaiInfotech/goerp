import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/attendance_scanner_model.dart';

part 'attendance_scanner_state.freezed.dart';

@freezed
class AttendanceScannerState with _$AttendanceScannerState {
  const factory AttendanceScannerState.loading(AttendanceScannerModel attendanceScannerModel) = _Loading;
  const factory AttendanceScannerState.content(AttendanceScannerModel attendanceScannerModel) = _Content;
  const factory AttendanceScannerState.success(AttendanceScannerModel attendanceScannerModel) = _Success;
  const factory AttendanceScannerState.failed(AttendanceScannerModel attendanceScannerModel, String message) = _Failed;

  factory AttendanceScannerState.initial() =>  AttendanceScannerState.content(AttendanceScannerModel());
}
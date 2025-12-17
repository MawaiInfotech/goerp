import 'package:bloc/bloc.dart';
import 'package:goerp/service/attendance_service.dart';
import 'package:goerp/state/attendance_scanner_state.dart';

import '../errors/api_error.dart';



class AttendanceScannerBloc extends Cubit<AttendanceScannerState>{
  AttendanceScannerBloc(this.attendanceService): super(AttendanceScannerState.initial());

  AttendanceService attendanceService;

  Future<void> init(Map<String, dynamic> data)async{
    try{
      emit(AttendanceScannerState.loading(state.attendanceScannerModel));
      final details = await attendanceService.getAttendanceScannerData(data);
      emit(AttendanceScannerState.content(details!));
    }on ApiError catch(error){
      emit(AttendanceScannerState.failed(state.attendanceScannerModel,  error.message));
    }
  }
}
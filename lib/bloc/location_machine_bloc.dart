import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/location_machine_state.dart';

import '../errors/api_error.dart';

class LocationMachineBloc extends Cubit<LocationMachineState>{
  LocationMachineBloc(this.breakdownService) : super(LocationMachineState.initial());

  final BreakdownService breakdownService;

  Future<void> init(String unitCode)async{
    emit(LocationMachineState.loading(state.locationMachineModel));
    try{
      final locMachineList = await breakdownService.getLocationMachineList(unitCode);
      emit(LocationMachineState.content(locMachineList!));
    }on ApiError catch(error){
      emit(LocationMachineState.failed(state.locationMachineModel,  error.message));
    }
  }
}
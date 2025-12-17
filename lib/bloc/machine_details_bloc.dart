import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/state/machine_details_state.dart';

import '../errors/api_error.dart';
import '../service/breakdown_service.dart';


class MachineDetailsBloc extends Cubit<MachineDetailsState>{
  MachineDetailsBloc(this.breakdownService,) : super(MachineDetailsState.initial());

  BreakdownService breakdownService;

  Future<void> init(String unitCd)async{
    emit(MachineDetailsState.loading(state.machineDetailsModel));
    try{
      final machineList = await breakdownService.getMachineList(unitCd);
      emit(MachineDetailsState.content(machineList));
    }on ApiError catch(error){
      emit(MachineDetailsState.failed(state.machineDetailsModel,  error.message));
    }
  }

  void clear() {
    emit(const MachineDetailsState.loading([]));
  }

}
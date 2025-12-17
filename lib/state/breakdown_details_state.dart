import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/breakdown_details_model.dart';


part 'breakdown_details_state.freezed.dart';

@freezed
class BreakdownDetailsState with _$BreakdownDetailsState {
  const factory BreakdownDetailsState.loading(BreakdownDetailsModel breakdownDetailsModel) =_Loading;
  const factory BreakdownDetailsState.content(BreakdownDetailsModel breakdownDetailsModel) =_Content;
  const factory BreakdownDetailsState.success(BreakdownDetailsModel breakdownDetailsModel) =_Success;
  const factory BreakdownDetailsState.failed( BreakdownDetailsModel breakdownDetailsModel, message) = _Failed;

  factory BreakdownDetailsState.initial() => const BreakdownDetailsState.content(BreakdownDetailsModel());
}

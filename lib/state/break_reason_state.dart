import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/break_reason_model.dart';



part 'break_reason_state.freezed.dart';

@freezed
class BreakReasonState with _$BreakReasonState {
  const factory BreakReasonState.loading(List<BreakReasonModel> breakReasonModel) =_Loading;
  const factory BreakReasonState.content(List<BreakReasonModel> breakReasonModel) =_Content;
  const factory BreakReasonState.success(List<BreakReasonModel> breakReasonModel) =_Success;
  const factory BreakReasonState.failed( List<BreakReasonModel> breakReasonModel, message) = _Failed;

  factory BreakReasonState.initial() => const BreakReasonState.content([]);
}

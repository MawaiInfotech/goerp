import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/complaint_history_model.dart';

part 'complaint_history_state.freezed.dart';

@freezed
class ComplaintHistoryState with _$ComplaintHistoryState {
  const factory ComplaintHistoryState.loading(ComplaintHistoryModel complaintHistoryModel) =_Loading;
  const factory ComplaintHistoryState.content(ComplaintHistoryModel complaintHistoryModel) =_Content;
  const factory ComplaintHistoryState.success(ComplaintHistoryModel complaintHistoryModel) =_Success;
  const factory ComplaintHistoryState.failed( ComplaintHistoryModel complaintHistoryModel, message) = _Failed;

  factory ComplaintHistoryState.initial() => const ComplaintHistoryState.content(ComplaintHistoryModel());
}

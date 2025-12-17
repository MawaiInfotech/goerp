import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/submit_complaint_model.dart';

part 'submit_complaint_state.freezed.dart';

@freezed
class SubmitComplaintState with _$SubmitComplaintState {
  const factory SubmitComplaintState.loading(SubmitComplaintModel submitComplaintModel) = _Loading;
  const factory SubmitComplaintState.content(SubmitComplaintModel submitComplaintModel) = _Content;
  const factory SubmitComplaintState.success(SubmitComplaintModel submitComplaintModel, String? message) = _Success;
  const factory SubmitComplaintState.failed( SubmitComplaintModel submitComplaintModel, String message) = _Failed;

  factory SubmitComplaintState.initial() => const SubmitComplaintState.content(SubmitComplaintModel());
}
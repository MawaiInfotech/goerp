import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/approve_model.dart';

part 'approve_state.freezed.dart';

@freezed
class ApproveState with _$ApproveState {
  const factory ApproveState.loading(ApproveModel approveModel) = _Loading;
  const factory ApproveState.content(ApproveModel approveModel) = _Content;
  const factory ApproveState.success(ApproveModel approveModel) = _Success;
  const factory ApproveState.failed(ApproveModel approveModel, String message) = _Failed;

  factory ApproveState.initial() =>  ApproveState.content(ApproveModel());
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/sos_model.dart';

part 'sos_state.freezed.dart';

@freezed
class SosState with _$SosState {
  const factory SosState.loading(SosModel sosModel) = _Loading;
  const factory SosState.content(SosModel sosModel) = _Content;
  const factory SosState.success(SosModel sosModel,String? message) = _Success;
  const factory SosState.failed(SosModel sosModel, String message) = _Failed;

  factory SosState.initial() =>  SosState.content(SosModel());
}
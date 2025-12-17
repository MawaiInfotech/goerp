import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_complaint_model.g.dart';
part 'submit_complaint_model.freezed.dart';

@freezed
class SubmitComplaintModel with _$SubmitComplaintModel{
  const factory SubmitComplaintModel({
    @Default(false) bool status,
    @Default("") String message,
  }) = _SubmitComplaintModel;

  factory SubmitComplaintModel.fromJson(Map<String, dynamic> json) => _$SubmitComplaintModelFromJson(json);
}
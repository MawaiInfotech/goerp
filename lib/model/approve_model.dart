import 'package:freezed_annotation/freezed_annotation.dart';

part 'approve_model.freezed.dart';
part 'approve_model.g.dart';

@freezed
class ApproveModel with _$ApproveModel {
  const factory ApproveModel({
    @Default('') String po_no,
    @Default(0) int amd_no,
    @Default('') String app_by,
    @Default('') String app_dt,
    @Default('') String remarks,
    @Default('') String app_stage,
    @Default('') String doc_type,
    @Default('') String unit_code,
    @Default('') String comp_code,
    @Default('') String updated_at,
    @Default('') String created_at,
    @Default(0) int id,
    @Default({}) Map<String, String?> errors,
  }) = _ApproveModel;

  factory ApproveModel.fromJson(Map<String, dynamic> json) =>
      _$ApproveModelFromJson(json);

}
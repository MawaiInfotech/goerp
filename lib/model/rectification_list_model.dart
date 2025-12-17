import 'package:freezed_annotation/freezed_annotation.dart';

part 'rectification_list_model.g.dart';
part 'rectification_list_model.freezed.dart';

@freezed
class RectificationListModel with _$RectificationListModel{
  const factory RectificationListModel({
    @JsonKey(name: "comp_id") @Default(0) int compId,
    @JsonKey(name: "comp_no") @Default("") String complainNo,
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
    @JsonKey(name: "break_do_date") @Default("") String breakdownDtTm,
    @JsonKey(name: "m_l_machine_code") @Default("") String machineCode,
    @JsonKey(name: "machine_name") @Default("") String machineName,
    @JsonKey(name: "comp_by") @Default("") String complaintById,
    @JsonKey(name: "breakdown_details") @Default("") String breakdownDetails,
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "complaint_by") @Default("") String complaintBy,
    @JsonKey(name: "unit_name") @Default("") String unitName,
    @JsonKey(name: "target_entry_date") @Default("") String targetDtTime,
    @JsonKey(name: "remark_target") @Default("") String remarkTarget,
    @JsonKey(name: "actual_hover_date") @Default("") String handoverDtTm,
    @JsonKey(name: "accepted_by_name") @Default("") String acceptedByName,
    @JsonKey(name: "accepted_by") @Default("") String acceptedByCode,
    @JsonKey(name: "remarks") @Default("") String handoverRemark,
    @JsonKey(name: "image_url") @Default("") String image,
    @JsonKey(name: "control_code") @Default("") String control_code,
    @JsonKey(name: "meaning") @Default("") String meaning,
  }) = _RectificationListModel;

  factory RectificationListModel.fromJson(Map<String, dynamic> json) => _$RectificationListModelFromJson(json);
}
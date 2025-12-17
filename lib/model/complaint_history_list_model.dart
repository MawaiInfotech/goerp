import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_history_list_model.g.dart';
part 'complaint_history_list_model.freezed.dart';

@freezed
class ComplaintHistoryListModel with _$ComplaintHistoryListModel{
  const factory ComplaintHistoryListModel({
    @JsonKey(name: "comp_no") @Default("") String complainNo,
    @JsonKey(name: "comp_date") @Default("") String complainDate,
    @JsonKey(name: "m_l_machine_code") @Default("") String machineCode,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "locat_code") @Default("") String locationCode,
    @JsonKey(name: "comp_by") @Default("") String complaintBy,
    @JsonKey(name: "break_do_time") @Default("") String breakdownDtTm,
    @JsonKey(name: "breakdown_details") @Default("") String details,
    @JsonKey(name: "handover_date") @Default("") String handoverDate,
    @JsonKey(name: "compl_status") @Default("") String status,
  }) = _ComplaintHistoryListModel;

  factory ComplaintHistoryListModel.fromJson(Map<String, dynamic> json) => _$ComplaintHistoryListModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/complaint_history_list_model.dart';

part 'complaint_history_model.g.dart';
part 'complaint_history_model.freezed.dart';

@freezed
class ComplaintHistoryModel with _$ComplaintHistoryModel{
  const factory ComplaintHistoryModel({
    @JsonKey(name: "pdf_url") @Default("") String pdf_url,
    @JsonKey(name: "excel_url") @Default("") String excel_url,
    @Default(<ComplaintHistoryListModel> []) List<ComplaintHistoryListModel> details_data,

  }) = _ComplaintHistoryModel;

  factory ComplaintHistoryModel.fromJson(Map<String, dynamic> json) => _$ComplaintHistoryModelFromJson(json);
}
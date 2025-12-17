import 'package:freezed_annotation/freezed_annotation.dart';


part 'reportlist_model.freezed.dart';
part 'reportlist_model.g.dart';

@freezed
class ReportListModel with _$ReportListModel {
  const factory ReportListModel({
    @JsonKey(name: 'file_id')@Default('') String fileId,
    @JsonKey(name: 'file_display_name')@Default('') String fileDisplayName,
    @JsonKey(name: 'rep_module')@Default('') String module,
    @JsonKey(name: 'file_type' )@Default('') String fileType,
    @JsonKey(name: 'file_seq')@Default(0) int fileSeq,
    @Default({}) Map<String, String?> errors,
  }) = _ReportListModel;

  factory ReportListModel.fromJson(Map<String, dynamic> json) =>
      _$ReportListModelFromJson(json);

}
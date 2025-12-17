import 'package:freezed_annotation/freezed_annotation.dart';

part 'rect_detail_main_data_model.g.dart';
part 'rect_detail_main_data_model.freezed.dart';

@freezed
class RectDetailMainDataModel with _$RectDetailMainDataModel{
  const factory RectDetailMainDataModel({
    @JsonKey(name: "rectif_type") @Default("") String rectif_type,
    @JsonKey(name: "rectification_date") @Default("") String rectification_date,
    @JsonKey(name: "remarks") @Default("") String remarks,
    @JsonKey(name: "rectified_by") @Default("") String rectified_by,
    @JsonKey(name: "breakdown_reason") @Default("") String breakdown_reason,
    @JsonKey(name: "action_taken") @Default("") String action_taken,
    @JsonKey(name: "rect_entry_date") @Default("") String rect_entry_date,
    @JsonKey(name: "rectif_type_name") @Default("") String rectif_type_name,
    @JsonKey(name: "rectified_by_name") @Default("") String rectified_by_name,

  }) = _RectDetailMainDataModel;

  factory RectDetailMainDataModel.fromJson(Map<String, dynamic> json) => _$RectDetailMainDataModelFromJson(json);
}
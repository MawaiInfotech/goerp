import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/rect_detail_break_reason_model.dart';
import 'package:goerp/model/rect_detail_main_data_model.dart';
import 'package:goerp/model/rect_detail_spare_part_model.dart';

part 'rect_details_model.g.dart';
part 'rect_details_model.freezed.dart';

@freezed
class RectDetailsModel with _$RectDetailsModel{
  const factory RectDetailsModel({
    @JsonKey(name: "rectification") RectDetailMainDataModel? rectification,
    @Default(<RectDetailBreakReasonModel> []) List<RectDetailBreakReasonModel> breakdown_reason,
    @Default(<RectDetailSparePartModel> []) List<RectDetailSparePartModel> spare_parts,
  }) = _RectDetailsModel;

  factory RectDetailsModel.fromJson(Map<String, dynamic> json) => _$RectDetailsModelFromJson(json);
}
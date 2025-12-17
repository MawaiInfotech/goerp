import 'package:freezed_annotation/freezed_annotation.dart';

part 'rect_detail_spare_part_model.g.dart';
part 'rect_detail_spare_part_model.freezed.dart';

@freezed
class RectDetailSparePartModel with _$RectDetailSparePartModel{
  const factory RectDetailSparePartModel({
    @JsonKey(name: "spare_con_co") @Default("") String spare_con_co,
    @JsonKey(name: "item_type") @Default("") String item_type,
    @JsonKey(name: "no_off") @Default("") String no_off,
    @JsonKey(name: "others") @Default("") String others,

  }) = _RectDetailSparePartModel;

  factory RectDetailSparePartModel.fromJson(Map<String, dynamic> json) => _$RectDetailSparePartModelFromJson(json);
}
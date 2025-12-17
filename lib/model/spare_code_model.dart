import 'package:freezed_annotation/freezed_annotation.dart';

part 'spare_code_model.g.dart';
part 'spare_code_model.freezed.dart';

@freezed
class SpareCodeModel with _$SpareCodeModel{
  const factory SpareCodeModel({
    @JsonKey(name: "item_cd") @Default("") String itemCode,
    @JsonKey(name: "item_desc") @Default("") String description,
    @JsonKey(name: "item_type") @Default("") String itemType,

  }) = _SpareCodeModel;

  factory SpareCodeModel.fromJson(Map<String, dynamic> json) => _$SpareCodeModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rectification_type_model.g.dart';
part 'rectification_type_model.freezed.dart';

@freezed
class RectificationTypeModel with _$RectificationTypeModel{
  const factory RectificationTypeModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "meaning") @Default("") String meaning,

  }) = _RectificationTypeModel;

  factory RectificationTypeModel.fromJson(Map<String, dynamic> json) => _$RectificationTypeModelFromJson(json);
}
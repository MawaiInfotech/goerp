import 'package:freezed_annotation/freezed_annotation.dart';

part 'rectified_by_model.g.dart';
part 'rectified_by_model.freezed.dart';

@freezed
class RectifiedByModel with _$RectifiedByModel{
  const factory RectifiedByModel({
    @JsonKey(name: "eno") @Default("") String number,
    @JsonKey(name: "ename") @Default("") String name,
  }) = _RectifiedByModel;

  factory RectifiedByModel.fromJson(Map<String, dynamic> json) => _$RectifiedByModelFromJson(json);
}
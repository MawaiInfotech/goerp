import 'package:freezed_annotation/freezed_annotation.dart';

part 'unitlist_model.freezed.dart';
part 'unitlist_model.g.dart';

@freezed
class UnitListModel with _$UnitListModel {
  const factory UnitListModel({
    @JsonKey(name: 'user_line_id') @Default('') String userLineId,
    @Default('') String userId,
    @Default('') String unitcode,
    @Default('') String name,
    @Default(0) int comp_code,
    @Default({}) Map<String, String?> errors,
  }) = _UnitListModel;

  factory UnitListModel.fromJson(Map<String, dynamic> json) =>
      _$UnitListModelFromJson(json);

}
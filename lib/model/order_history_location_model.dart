import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_location_model.g.dart';
part 'order_history_location_model.freezed.dart';

@freezed
class OrderHistoryLocationModel with _$OrderHistoryLocationModel{
  const factory OrderHistoryLocationModel({
    @JsonKey(name: "locat_code") @Default("") String locationCode,
    @JsonKey(name: "short_desc") @Default("") String description,
  }) = _OrderHistoryLocationModel;

  factory OrderHistoryLocationModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryLocationModelFromJson(json);
}
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_model.freezed.dart';
part 'graph_model.g.dart';

@freezed
class GraphModel with _$GraphModel {
  const factory GraphModel({
    @JsonKey(name: 'fin_years')@Default('') String finalYear,
    @JsonKey(name: 'amounts')@Default(0.0) double AmountSales,
    @JsonKey(name: 'xaxisvalue')@Default('') String xAxisValue,
    @JsonKey(name: 'graph_name' )@Default('') String graphName,
    @Default({}) Map<String, String?> errors,
  }) = _GraphModel;

  factory GraphModel.fromJson(Map<String, dynamic> json) =>
      _$GraphModelFromJson(json);

}
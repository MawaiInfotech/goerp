// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GraphModelImpl _$$GraphModelImplFromJson(Map<String, dynamic> json) =>
    _$GraphModelImpl(
      finalYear: json['fin_years'] as String? ?? '',
      AmountSales: (json['amounts'] as num?)?.toDouble() ?? 0.0,
      xAxisValue: json['xaxisvalue'] as String? ?? '',
      graphName: json['graph_name'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$GraphModelImplToJson(_$GraphModelImpl instance) =>
    <String, dynamic>{
      'fin_years': instance.finalYear,
      'amounts': instance.AmountSales,
      'xaxisvalue': instance.xAxisValue,
      'graph_name': instance.graphName,
      'errors': instance.errors,
    };

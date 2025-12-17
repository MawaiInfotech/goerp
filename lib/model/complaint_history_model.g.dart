// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplaintHistoryModelImpl _$$ComplaintHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintHistoryModelImpl(
      pdf_url: json['pdf_url'] as String? ?? "",
      excel_url: json['excel_url'] as String? ?? "",
      details_data: (json['details_data'] as List<dynamic>?)
              ?.map((e) =>
                  ComplaintHistoryListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ComplaintHistoryListModel>[],
    );

Map<String, dynamic> _$$ComplaintHistoryModelImplToJson(
        _$ComplaintHistoryModelImpl instance) =>
    <String, dynamic>{
      'pdf_url': instance.pdf_url,
      'excel_url': instance.excel_url,
      'details_data': instance.details_data,
    };

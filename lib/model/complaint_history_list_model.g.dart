// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_history_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplaintHistoryListModelImpl _$$ComplaintHistoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintHistoryListModelImpl(
      complainNo: json['comp_no'] as String? ?? "",
      complainDate: json['comp_date'] as String? ?? "",
      machineCode: json['m_l_machine_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
      locationCode: json['locat_code'] as String? ?? "",
      complaintBy: json['comp_by'] as String? ?? "",
      breakdownDtTm: json['break_do_time'] as String? ?? "",
      details: json['breakdown_details'] as String? ?? "",
      handoverDate: json['handover_date'] as String? ?? "",
      status: json['compl_status'] as String? ?? "",
    );

Map<String, dynamic> _$$ComplaintHistoryListModelImplToJson(
        _$ComplaintHistoryListModelImpl instance) =>
    <String, dynamic>{
      'comp_no': instance.complainNo,
      'comp_date': instance.complainDate,
      'm_l_machine_code': instance.machineCode,
      'description': instance.description,
      'locat_code': instance.locationCode,
      'comp_by': instance.complaintBy,
      'break_do_time': instance.breakdownDtTm,
      'breakdown_details': instance.details,
      'handover_date': instance.handoverDate,
      'compl_status': instance.status,
    };

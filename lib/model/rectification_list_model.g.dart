// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rectification_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RectificationListModelImpl _$$RectificationListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RectificationListModelImpl(
      compId: (json['comp_id'] as num?)?.toInt() ?? 0,
      complainNo: json['comp_no'] as String? ?? "",
      unitCode: json['unit_cd'] as String? ?? "",
      breakdownDtTm: json['break_do_date'] as String? ?? "",
      machineCode: json['m_l_machine_code'] as String? ?? "",
      machineName: json['machine_name'] as String? ?? "",
      complaintById: json['comp_by'] as String? ?? "",
      breakdownDetails: json['breakdown_details'] as String? ?? "",
      status: json['status'] as String? ?? "",
      complaintBy: json['complaint_by'] as String? ?? "",
      unitName: json['unit_name'] as String? ?? "",
      targetDtTime: json['target_entry_date'] as String? ?? "",
      remarkTarget: json['remark_target'] as String? ?? "",
      handoverDtTm: json['actual_hover_date'] as String? ?? "",
      acceptedByName: json['accepted_by_name'] as String? ?? "",
      acceptedByCode: json['accepted_by'] as String? ?? "",
      handoverRemark: json['remarks'] as String? ?? "",
      image: json['image_url'] as String? ?? "",
      control_code: json['control_code'] as String? ?? "",
      meaning: json['meaning'] as String? ?? "",
    );

Map<String, dynamic> _$$RectificationListModelImplToJson(
        _$RectificationListModelImpl instance) =>
    <String, dynamic>{
      'comp_id': instance.compId,
      'comp_no': instance.complainNo,
      'unit_cd': instance.unitCode,
      'break_do_date': instance.breakdownDtTm,
      'm_l_machine_code': instance.machineCode,
      'machine_name': instance.machineName,
      'comp_by': instance.complaintById,
      'breakdown_details': instance.breakdownDetails,
      'status': instance.status,
      'complaint_by': instance.complaintBy,
      'unit_name': instance.unitName,
      'target_entry_date': instance.targetDtTime,
      'remark_target': instance.remarkTarget,
      'actual_hover_date': instance.handoverDtTm,
      'accepted_by_name': instance.acceptedByName,
      'accepted_by': instance.acceptedByCode,
      'remarks': instance.handoverRemark,
      'image_url': instance.image,
      'control_code': instance.control_code,
      'meaning': instance.meaning,
    };

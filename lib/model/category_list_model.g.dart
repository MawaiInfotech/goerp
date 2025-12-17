// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListModelImpl _$$CategoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListModelImpl(
      docType: json['doc_type'] as String? ?? '',
      docName: json['doc_name'] as String? ?? '',
      unit_cd: json['unit_cd'] as String? ?? '',
      po_no: json['po_no'] as String? ?? '',
      amd_no: json['amd_no'] as String? ?? '',
      po_dt: json['po_dt'] as String? ?? '',
      name: json['name'] as String? ?? '',
      po_value: json['po_value'] as String? ?? '',
      po_status: json['po_status'] as String? ?? '',
      employeeCode: json['emp_cd'] as String? ?? '',
      authLevel: json['auth_level'] as String? ?? '',
      amtFrom: json['amt_fr'] as String? ?? '',
      amtTo: json['amt_to'] as String? ?? '',
      doc_app_type: json['doc_app_type'] as String? ?? '',
      flow_path: json['flow_path'] as String? ?? '',
      doc_id: json['doc_id'] as String? ?? '',
      imgUrl: json['imgUrl'] as String? ?? '',
      ctr: (json['ctr'] as num?)?.toInt() ?? 0,
      remark: json['remark'] as String? ?? '',
      entered_by: json['entered_by'] as String? ?? '',
      consignee: json['consignee'] as String? ?? '',
      categoryList: (json['categoryList'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CategoryListModelImplToJson(
        _$CategoryListModelImpl instance) =>
    <String, dynamic>{
      'doc_type': instance.docType,
      'doc_name': instance.docName,
      'unit_cd': instance.unit_cd,
      'po_no': instance.po_no,
      'amd_no': instance.amd_no,
      'po_dt': instance.po_dt,
      'name': instance.name,
      'po_value': instance.po_value,
      'po_status': instance.po_status,
      'emp_cd': instance.employeeCode,
      'auth_level': instance.authLevel,
      'amt_fr': instance.amtFrom,
      'amt_to': instance.amtTo,
      'doc_app_type': instance.doc_app_type,
      'flow_path': instance.flow_path,
      'doc_id': instance.doc_id,
      'imgUrl': instance.imgUrl,
      'ctr': instance.ctr,
      'remark': instance.remark,
      'entered_by': instance.entered_by,
      'consignee': instance.consignee,
      'categoryList': instance.categoryList,
      'errors': instance.errors,
    };

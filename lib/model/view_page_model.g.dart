// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewPageModelImpl _$$ViewPageModelImplFromJson(Map<String, dynamic> json) =>
    _$ViewPageModelImpl(
      docType: json['doc_type'] as String? ?? '',
      docName: json['doc_name'] as String? ?? '',
      doc_amd_no: json['doc_amd_no'] as String? ?? '0',
      item_cd: json['item_cd'] as String? ?? '',
      item_desc: json['item_desc'] as String? ?? '',
      uom: json['uom'] as String? ?? '',
      doc_qty: json['doc_qty'] as String? ?? '',
      price: json['price'] as String? ?? '0',
      discount: json['discount'] as String? ?? '',
      tax_rate: json['tax_rate'] as String? ?? '',
      unit_code: json['unit_code'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      viewModelList: (json['viewModelList'] as List<dynamic>?)
              ?.map((e) => ViewPageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ViewPageModelImplToJson(_$ViewPageModelImpl instance) =>
    <String, dynamic>{
      'doc_type': instance.docType,
      'doc_name': instance.docName,
      'doc_amd_no': instance.doc_amd_no,
      'item_cd': instance.item_cd,
      'item_desc': instance.item_desc,
      'uom': instance.uom,
      'doc_qty': instance.doc_qty,
      'price': instance.price,
      'discount': instance.discount,
      'tax_rate': instance.tax_rate,
      'unit_code': instance.unit_code,
      'amount': instance.amount,
      'remark': instance.remark,
      'viewModelList': instance.viewModelList,
      'errors': instance.errors,
    };

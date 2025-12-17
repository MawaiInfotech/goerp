// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportCardModelImpl _$$ReportCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportCardModelImpl(
      fileId: json['fileid'] as String? ?? '',
      itemCode: json['item_cd'] as String? ?? '',
      unitCode: json['unit_cd'] as String? ?? '',
      itemType: json['item_type'] as String? ?? '',
      itemDescription: json['item_desc'] as String? ?? '',
      Uom: json['iss_uom'] as String? ?? '',
      level: json['min_level'] as String? ?? '',
      reportName: json['report_name'] as String? ?? '',
      stock: json['stock'] as String? ?? '',
      heading1: json['col1head'] as String? ?? '',
      heading2: json['col2head'] as String? ?? '',
      heading3: json['col3head'] as String? ?? '',
      heading4: json['col4head'] as String? ?? '',
      heading5: json['col5head'] as String? ?? '',
      heading6: json['col6head'] as String? ?? '',
      reportCardList: (json['reportCardList'] as List<dynamic>?)
              ?.map((e) => ReportCardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ReportCardModelImplToJson(
        _$ReportCardModelImpl instance) =>
    <String, dynamic>{
      'fileid': instance.fileId,
      'item_cd': instance.itemCode,
      'unit_cd': instance.unitCode,
      'item_type': instance.itemType,
      'item_desc': instance.itemDescription,
      'iss_uom': instance.Uom,
      'min_level': instance.level,
      'report_name': instance.reportName,
      'stock': instance.stock,
      'col1head': instance.heading1,
      'col2head': instance.heading2,
      'col3head': instance.heading3,
      'col4head': instance.heading4,
      'col5head': instance.heading5,
      'col6head': instance.heading6,
      'reportCardList': instance.reportCardList,
      'errors': instance.errors,
    };

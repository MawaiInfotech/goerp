import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_card_model.freezed.dart';
part 'report_card_model.g.dart';

@freezed
class ReportCardModel with _$ReportCardModel {

  const ReportCardModel._();

  const factory ReportCardModel({
    @JsonKey(name: 'fileid')@Default('') String fileId,
    @JsonKey(name: 'item_cd')@Default('') String itemCode,
    @JsonKey(name: 'unit_cd' )@Default('') String unitCode,
    @JsonKey(name: 'item_type')@Default('') String itemType,
    @JsonKey(name: 'item_desc')@Default('') String itemDescription ,
    @JsonKey(name: 'iss_uom')@Default('') String Uom,
    @JsonKey(name: 'min_level')@Default('') String level,
    @JsonKey(name: 'report_name')@Default('') String reportName,
    @JsonKey(name: 'stock')@Default('') String stock,
    @JsonKey(name: 'col1head')@Default('') String heading1,
    @JsonKey(name: 'col2head')@Default('') String heading2,
    @JsonKey(name: 'col3head')@Default('') String heading3,
    @JsonKey(name: 'col4head')@Default('') String heading4,
    @JsonKey(name: 'col5head')@Default('') String heading5,
    @JsonKey(name: 'col6head')@Default('') String heading6,
  @Default([]) List<ReportCardModel> reportCardList,
    @Default({}) Map<String, String?> errors,
  }) = _ReportCardModel;

  factory ReportCardModel.fromJson(Map<String, dynamic> json) =>
      _$ReportCardModelFromJson(json);

  bool  isSearched(String query){
    return itemDescription.toLowerCase().contains(query) ||
        Uom.toLowerCase().contains(query) ||
        itemCode.toLowerCase().contains(query) ||
        itemType.toLowerCase().contains(query) ;
  }

}
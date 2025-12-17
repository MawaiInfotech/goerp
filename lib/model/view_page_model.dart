import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_page_model.freezed.dart';
part 'view_page_model.g.dart';

@freezed
class ViewPageModel with _$ViewPageModel {
  const factory ViewPageModel({
    @JsonKey(name: 'doc_type') @Default('') String docType,
    @JsonKey(name: 'doc_name') @Default('') String docName,
    @Default('0') String doc_amd_no,
    @Default('') String item_cd,
    @Default('') String item_desc,
    @Default('') String uom,
    @Default('') String doc_qty,
    @Default('0') String price,
    @Default('') String discount,
    @Default('') String tax_rate,
    @Default('') String unit_code,
    @Default('') String amount,
    @Default('') String remark,
    @Default([]) List<ViewPageModel> viewModelList,
    @Default({}) Map<String, String?> errors,
  }) = _ViewPageModel;

  factory ViewPageModel.fromJson(Map<String, dynamic> json) =>
      _$ViewPageModelFromJson(json);

}
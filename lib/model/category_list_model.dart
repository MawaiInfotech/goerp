import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_model.freezed.dart';
part 'category_list_model.g.dart';

@freezed
class CategoryListModel with _$CategoryListModel {

  const CategoryListModel._();
  
  const factory CategoryListModel({
    @JsonKey(name: 'doc_type') @Default('') String docType,
    @JsonKey(name: 'doc_name') @Default('') String docName,
    @Default('') String unit_cd,
    @Default('') String po_no,
    @Default('') String amd_no,
    @Default('') String po_dt,
    @Default('') String name,
    @Default('') String po_value,
    @Default('') String po_status,
    @JsonKey(name: 'emp_cd') @Default('') String employeeCode,
    @JsonKey(name: 'auth_level') @Default('') String authLevel,
    @JsonKey(name: 'amt_fr') @Default('') String amtFrom,
    @JsonKey(name: 'amt_to') @Default('') String amtTo,
    @Default('') String doc_app_type,
    @Default('') String flow_path,
    @Default('') String doc_id,
    @Default('') String imgUrl,
    @Default(0) int ctr,
    @Default('') String remark,
    @Default('') String entered_by,
    @Default('') String consignee,
    @Default([]) List<CategoryListModel> categoryList,
    @Default({}) Map<String, String?> errors,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);

  bool  isSearched(String query){
    final search = query.toLowerCase().trim();
    return docType.toLowerCase().contains(query) ||
        docName.toLowerCase().contains(query) ||
        po_no.toLowerCase().contains(query) ||
        doc_app_type.toLowerCase().contains(query) ||
    amtFrom.toLowerCase().contains(query)||
    amd_no.toLowerCase().contains(query)||
    name.toLowerCase().contains(search)||
    po_dt.toLowerCase().contains(query);
  }

}
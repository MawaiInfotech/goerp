import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/category_list_model.dart';
import 'package:goerp/model/unitlist_model.dart';

part 'category_list_state.freezed.dart';

@freezed
class CategoryListState with _$CategoryListState {
  const factory CategoryListState.loading(List<CategoryListModel> categoryList, UnitListModel unitListModel) = _Loading;
  const factory CategoryListState.content(List<CategoryListModel> categoryList, UnitListModel unitListModel) = _Content;
  const factory CategoryListState.success(List<CategoryListModel> categoryList, UnitListModel unitListModel) = _Success;
  const factory CategoryListState.failed(List<CategoryListModel> categoryList, String message, UnitListModel unitListModel) = _Failed;

  factory CategoryListState.initial() =>  CategoryListState.content([],UnitListModel());
}
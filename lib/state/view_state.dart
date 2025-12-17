import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:goerp/model/view_page_model.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.loading(List<ViewPageModel> viewList) = _Loading;
  const factory ViewState.content(List<ViewPageModel> viewList) = _Content;
  const factory ViewState.success(List<ViewPageModel> viewList) = _Success;
  const factory ViewState.failed(List<ViewPageModel> viewList, String message) = _Failed;

  factory ViewState.initial() =>  ViewState.content([]);
}
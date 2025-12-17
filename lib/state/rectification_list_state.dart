import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/machine_details_model.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/model/rectification_list_model.dart';


part 'rectification_list_state.freezed.dart';

@freezed
class RectificationListState with _$RectificationListState {
  const factory RectificationListState.loading(List<RectificationListModel> rectificationListModel) =_Loading;
  const factory RectificationListState.content(List<RectificationListModel> rectificationListModel) =_Content;
  const factory RectificationListState.success(List<RectificationListModel> rectificationListModel) =_Success;
  const factory RectificationListState.failed( List<RectificationListModel> rectificationListModel, message) = _Failed;

  factory RectificationListState.initial() => const RectificationListState.content([]);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:goerp/model/rectified_by_model.dart';

part 'rectified_by_state.freezed.dart';

@freezed
class RectifiedByState with _$RectifiedByState {
  const factory RectifiedByState.loading(List<RectifiedByModel> rectifiedByModel) =_Loading;
  const factory RectifiedByState.content(List<RectifiedByModel> rectifiedByModel) =_Content;
  const factory RectifiedByState.success(List<RectifiedByModel> rectifiedByModel) =_Success;
  const factory RectifiedByState.failed( List<RectifiedByModel> rectifiedByModel, message) = _Failed;

  factory RectifiedByState.initial() => const RectifiedByState.content([]);
}

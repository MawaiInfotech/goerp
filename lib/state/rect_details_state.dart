import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/breakdown_details_model.dart';
import 'package:goerp/model/rect_details_model.dart';
import 'package:goerp/model/rect_details_model.dart';
import 'package:goerp/model/rect_details_model.dart';
import 'package:goerp/model/rect_details_model.dart';


part 'rect_details_state.freezed.dart';

@freezed
class RectDetailsState with _$RectDetailsState {
  const factory RectDetailsState.loading(RectDetailsModel rectDetailsModel) =_Loading;
  const factory RectDetailsState.content(RectDetailsModel rectDetailsModel) =_Content;
  const factory RectDetailsState.success(RectDetailsModel rectDetailsModel) =_Success;
  const factory RectDetailsState.failed( RectDetailsModel rectDetailsModel, message) = _Failed;

  factory RectDetailsState.initial() => const RectDetailsState.content(RectDetailsModel());
}

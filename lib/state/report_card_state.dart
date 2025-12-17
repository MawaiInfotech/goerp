import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/report_card_model.dart';
import 'package:goerp/model/report_model.dart';

import '../model/unitlist_model.dart';

part 'report_card_state.freezed.dart';

@freezed
class ReportCardState with _$ReportCardState {
  const factory ReportCardState.loading(List<ReportCardModel> reportCardList,UnitListModel unitListModel) =
      _Loading;
  const factory ReportCardState.content(List<ReportCardModel> reportCardList,UnitListModel unitListModel) =
      _Content;
  const factory ReportCardState.success(List<ReportCardModel> reportCardList,UnitListModel unitListModel) =
      _Success;
  const factory ReportCardState.failed(
      List<ReportCardModel> reportCardList, String message,UnitListModel unitListModel) = _Failed;

  factory ReportCardState.initial() => ReportCardState.content([],UnitListModel());
}

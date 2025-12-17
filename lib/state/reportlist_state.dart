import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/report_model.dart';
import 'package:goerp/model/reportlist_model.dart';

part 'reportlist_state.freezed.dart';

@freezed
class ReportListState with _$ReportListState {
  const factory ReportListState.loading(List<ReportListModel> reportDetailList) = _Loading;
  const factory ReportListState.content(List<ReportListModel> reportDetailList) = _Content;
  const factory ReportListState.success(List<ReportListModel> reportDetailList) = _Success;
  const factory ReportListState.failed(List<ReportListModel> reportDetailList, String message) = _Failed;

  factory ReportListState.initial() =>  ReportListState.content([]);
}
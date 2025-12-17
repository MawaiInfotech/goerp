import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/report_model.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.loading(List<ReportModel> reportList) = _Loading;
  const factory ReportState.content(List<ReportModel> reportList) = _Content;
  const factory ReportState.success(List<ReportModel> reportList) = _Success;
  const factory ReportState.failed(List<ReportModel> reportList, String message) = _Failed;

  factory ReportState.initial() =>  ReportState.content([]);
}
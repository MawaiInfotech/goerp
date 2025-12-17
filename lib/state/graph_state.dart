import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/graph_model.dart';

part 'graph_state.freezed.dart';

@freezed
class GraphState with _$GraphState {
  const factory GraphState.loading(List<GraphModel> graphList) = _Loading;
  const factory GraphState.content(List<GraphModel> graphList) = _Content;
  const factory GraphState.success(List<GraphModel> graphList) = _Success;
  const factory GraphState.failed(List<GraphModel> graphList, String message) = _Failed;

  factory GraphState.initial() =>  GraphState.content([]);
}
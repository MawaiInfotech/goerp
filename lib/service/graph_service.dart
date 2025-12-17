import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../errors/api_error.dart';
import '../model/graph_model.dart';
import 'constants.dart';
import 'package:http/http.dart' as http;

class GraphService{

  Future<List<GraphModel>> getGraphList(String fileId, String unitCode) async {
    final body = {'file_Id': fileId, 'unitCode': unitCode};

    var url = root1 + 'getGraphs';

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
      // print(responseBody);
      final itemList = responseBody['model'] as List;
      print(itemList);
      return itemList.map((e) => GraphModel.fromJson(e)).toList();

    } catch (e) {
      _handleError(e);
    }
    return [];
  }


  _handleError(var e) {
    // print(e);
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}
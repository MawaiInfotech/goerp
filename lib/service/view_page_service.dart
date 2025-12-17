import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/model/view_page_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class ViewPageService{

  Future<List<ViewPageModel>> getViewPageDetails(String doc_number, String docName) async {
    final body = {
      'docno': doc_number,
      'docName': docName
    };
   // print(body);
    final url = root1 + 'getDocDtlList';

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
      final itemList = responseBody['getDtlList'] as List;
      return itemList.map((e) => ViewPageModel.fromJson(e)).toList();
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  _handleError(var e) {
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}
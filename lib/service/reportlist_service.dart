import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:goerp/model/reportlist_model.dart';
import '../errors/api_error.dart';
import 'constants.dart';

class ReportListService{

  var _reportList = const ReportListModel();

  ReportListModel get reportList => _reportList;

  Future<List<ReportListModel>> getReportList(String userId, String modules, String filetp) async {
    final body = {
      'userId' : userId,
      'modules': modules,
      'filetp' : filetp
    };
print(body);
    var url = root1 + 'getListOfModuleDetail';

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
print(responseBody);
      final itemList = responseBody['model'] as List;
      return itemList.map((e) => ReportListModel.fromJson(e)).toList();
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

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/model/report_card_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class ReportCardService{

  Future<List<ReportCardModel>> getReportList(String fileId, String unitCode) async {
    final body = {'file_Id': fileId, 'unitCode' : unitCode};

    var url = root1 + 'getReports';

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);

      final itemList = responseBody['model'] as List;

      return itemList.map((e) => ReportCardModel.fromJson(e)).toList();

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

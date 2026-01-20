import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/model/report_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class ReportService{

  var _reportList = ReportModel();

  ReportModel get reportList => _reportList;

Future<List<ReportModel>> getReportList(String userId) async {
  final body = {'userId': userId};

  var url = root1 + 'getListOfModule';

  final response = await http.post(Uri.parse(url),
      body: json.encode(body), headers: headers);
  try {
    final responseBody = json.decode(response.body);
    final itemList = responseBody['model'] as List;
    return itemList.map((e) => ReportModel.fromJson(e)).toList();
  } catch (e) {
    print(e);
  }
  return [];
}
}

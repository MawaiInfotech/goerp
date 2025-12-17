

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:goerp/model/attendance_scanner_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class AttendanceService{

  Future<AttendanceScannerModel?> getAttendanceScannerData(Map<String, dynamic> data) async {
    String url = '${root1}createRawAppData';
    final body = data;
    final response = await http.post(Uri.parse(url),body: json.encode(body) ,headers: headers);
    final responseBody = json.decode(response.body);
    try {

      if(responseBody["status"] == "success") {
        return AttendanceScannerModel.fromJson(responseBody["appdata"]);
      }else{
        throw ApiError.fromResponse(responseBody['message']);
      }
    }
    catch (e) {
      _handleError(e);
    }
    return const AttendanceScannerModel();
  }

  _handleError(var e) {
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}
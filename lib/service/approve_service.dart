import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/model/approve_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class ApprovePageService {
  Future<ApproveModel?> getApproveDetails(
      String docNo,String amdNo,String username, String docAppDt,String remark, String docAppStatus, String docAppType, String unitCode,) async {
    final body = {
      'docno': docNo,
      'docamd': amdNo,
      'docappby': username,
      'docappdt': docAppDt,
      'docremarks': remark,
      'docappstage': docAppStatus,
      'docappdoctp':docAppType,
      'docunit': unitCode,
    };
    var url = root1 + 'createAppData';
    final response = await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
      // if (responseBody['status'] == true) {
      //   final itemList = responseBody['data'] as List;
      //   return itemList.map((e) => CatalogueModel.fromJson(e)).toList();
      // }
      return ApproveModel.fromJson(responseBody);
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  _handleError(var e) {
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }

}

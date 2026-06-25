import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/model/category_list_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constants.dart';

class CategoryListService {
  // final _categoryListModel = CategoryListModel();

  // CategoryListModel get getCategoryDetails => _categoryListModel;

  Future<List<CategoryListModel>> getCategoryList(
      String empCd, String unitCd) async {
    final body = {
      'empcd': empCd,
       //'unit': unitCd
    };
   print(empCd);
    var url = root1 + 'getDocCount';

    final response = await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
      final itemList = responseBody['getAllCategory'] as List;
      return itemList.map((e) => CategoryListModel.fromJson(e)).toList();
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<List<CategoryListModel>> getEachCategoryList(String docType, String empCd, String unitCd) async {
    final body = {
      'empcd': empCd,
      'unit': unitCd,
      'doctp': docType,
    };
    var url = root1 + 'getDocList';
    final response = await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
    try {
      final responseBody = json.decode(response.body);
      final itemList = responseBody['getAllCategory'] as List;
      return itemList.map((e) => CategoryListModel.fromJson(e)).toList();
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<String?> sosUpdate(String status)async{
    var url = "http://103.25.128.125:90/api/soscheck";
    final body = {
      "status":status
    };
    final response = await http.post(Uri.parse(url),body: json.encode(body), headers: headers);
    try{
      final responseBody = json.decode(response.body);
      if(responseBody["status"] == 200){
        return responseBody["message"];

      }else{
        throw ApiError.fromResponse(responseBody["message"]);
      }
    }catch(e){
      print(e);
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

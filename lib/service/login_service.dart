import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:goerp/service/report_service.dart';
import 'package:goerp/service/reportlist_service.dart';
import 'package:http/http.dart' as http;
import '../constant.dart';
import '../errors/api_error.dart';
import '../model/companyname_model.dart';
import '../model/unitlist_model.dart';
import '../model/user_entry_model.dart';
import 'constants.dart';

class LoginService {
  var _companyName = const CompanyName();
  var _userEntry = const UserEntry();
  var _unitList = <UnitListModel>[];

  CompanyName get getCompanyDetails => _companyName;
  UserEntry get getUserEntry => _userEntry;
  List<UnitListModel> get getUnitNumbers => _unitList;

  // UnitListModel get getUnitListModelFromEntry {
  //   late UnitListModel model;
  //   for(var model in _unitList){
  //     if(model.unitcode == _userEntry.unitCode) model = model;
  //   }
  //   return midel;
  // }

  /// Company Name
  Future<CompanyName?> getCompanyName() async {
    var url = root1 + 'getCompanyName';
    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      final responseBody = response.body;
      final result = json.decode(responseBody);
      _companyName = CompanyName.fromJson(result);
      final companyName = result["comp_name"];
      await prefsBox.put(kCompanyName, companyName);
      return   _companyName;
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  /// UnitList

  Future<List<UnitListModel>?> getUnitList() async {
    final body = {
      //'comp_code': _companyName.companyCode,
     // 'userId': _userEntry.userId
      'userId': "1"
    };
    var url = root1 + 'getUnitList';
    try {
      final response = await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
      final responseBody = response.body;
      final result = json.decode(responseBody);
      final jsonList = List<Map<String, dynamic>>.from(result['getUniList']);
      final unitListModels = jsonList.map((e) => UnitListModel.fromJson(e)).toList();
      _unitList = unitListModels;
      return unitListModels;
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  Future<List<UnitListModel>?> getUnitListBreakdown() async {
    final body = {
      //'comp_code': _companyName.companyCode,
      // 'userId': _userEntry.userId
      'userId': userId
    };
     print("Hii User Id is ${_userEntry.userId}");
    var url = root1 + 'getUnitList';
    try {
      final response = await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
      final responseBody = response.body;
      final result = json.decode(responseBody);
      final jsonList = List<Map<String, dynamic>>.from(result['getUniList']);
      final unitListModels = jsonList.map((e) => UnitListModel.fromJson(e)).toList();
      _unitList = unitListModels;
      return unitListModels;
    } catch (e) {
      _handleError(e);
    }
    return null;
  }


  //User Detail
  Future<void> UserDetail(String userName) async {
    final body = {'username': userName};
    var url = root1 + 'userDetail';
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: headers);
      final responseBody = response.body;
      final result = json.decode(responseBody);
      // final isLoggedIn = result['status'];
      _userEntry = UserEntry.fromJson(result['model']);
    } catch (e) {
      _handleError(e);
    }
  }


//Login

  // Future<void> logIn(
  //     {required String unitCode,required String userName,required String userPass}) async {
  //   final body = {
  //     'unit_cd': unitCode,
  //     'userId': _userEntry.userId,
  //     'userName': userName,
  //     'userPass': userPass
  //   };
  //   const url = root + 'loginCall';
  //   try {
  //     final response = await http.post(Uri.parse(url),
  //         body: json.encode(body), headers: headers);
  //
  //     final responseBody = json.decode(response.body);
  //     final isLoggedIn = responseBody['status'] as bool;
  //     if (!isLoggedIn) throw ApiError('User not found');
  //   } catch (e) {
  //     _handleError(e);
  //   }
  // }

  Future<void> logIn({
    required String userName,
    required String userPass,
    required String unitCode,
  }) async {
    final body = {
      'unit_cd': unitCode,
      'userId': _userEntry.userId,
      'username': userName,
      'userPass': userPass,
    };

    var url = root1 + 'loginterms';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(body),
        headers: headers,
      );

      final responseBody = json.decode(response.body);

      final isLoggedIn = responseBody['status'] == "true";
      if (!isLoggedIn) throw const ApiError('User not found');

      final empId = responseBody["Emp_Id"];
      final unitCd = responseBody["unit_cd"];
      final userId = responseBody["userId"];

      await prefsBox.put(kEmpCd, empId);
      await prefsBox.put(kUnitCd, unitCd);
      await prefsBox.put(kUserId, userId);

      /// 🔥 NEW PART (SAFE + CLEAN)
      final reportService = ReportService();
      final reportListService = ReportListService();

      final reports = await reportService.getReportList(userId);
      final utilityList = await reportListService.getReportList(
        userId,
        'Utility',
        'U',
      );

      await prefsBox.put(kHasReports, reports.isNotEmpty);
      await prefsBox.put(kHasUtility, utilityList.isNotEmpty);

    } catch (e) {
      _handleError(e);
    }
  }

  _handleError(var e) {
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}
//192.168.1.108:90
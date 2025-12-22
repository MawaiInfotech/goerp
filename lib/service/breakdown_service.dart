import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:io' as Io;
import 'package:flutter/cupertino.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/break_reason_model.dart';
import 'package:goerp/model/breakdown_details_model.dart';
import 'package:goerp/model/location_machine_model.dart';
import 'package:goerp/model/machine_details_model.dart';
import 'package:goerp/model/rect_details_model.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/model/rectified_by_model.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/complaint_history_model.dart';
import 'constants.dart';

class BreakdownService {

  Future<List<MachineDetailsModel>> getMachineList( String unitCd) async {
    final url = '${root1}breakdowncomplaint/getitemdetails';
    final body = {
      "unit_cd" : unitCd,
    };
    try {
      final response = await http.post(Uri.parse(url), headers: headers, body: json.encode(body));
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => MachineDetailsModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<String?> submitComplaint(
      String unitCd,
      String machineCode,
      String compDtTime,
      String locationCd,
      String details,
      String breakDownDtTime,
      String userId,
      String file,
      ) async {
    final url = "${root1}breakdowncomplaint/store";

    String img64 = "";
    String type = "";

    // Read image only if path is valid
    if (file.isNotEmpty && Io.File(file).existsSync()) {
      final bytes = Io.File(file).readAsBytesSync();
      img64 = base64Encode(bytes);

      String getBase64FileExtension(String img64) {
        switch (img64.characters.first) {
          case '/':
            return 'jpeg';
          case 'i':
            return 'png';
          case 'R':
            return 'gif';
          case 'U':
            return 'webp';
          case 'J':
            return 'pdf';
          default:
            return 'unknown';
        }
      }

      type = getBase64FileExtension(img64);
    }

    try {
      final body = {
        "unit_cd": unitCd,
        "machine_code": machineCode,
        "complaint_date": compDtTime,
        "location": locationCd,
        "breakdown_detail": details,
        "breakdown_date": breakDownDtTime,
        "complained_by": userId,

        // If no image, send empty string
        "image": img64.isEmpty ? "" : "data:image/$type;base64,$img64",
      };

      print(body);

      final response = await http.post(
        Uri.parse(url),
        body: json.encode(body),
        headers: headers,
      );

      final responseBody = json.decode(response.body);

      if (responseBody["status"] == true) {
        return responseBody["message"];
      } else {
        throw ApiError.fromResponse(responseBody["message"]);
      }
    } catch (e) {
      _handleError(e);
    }

    return null;
  }


  Future<List<RectificationListModel>> getRectificationList( String unitCd,String status) async {
    final url = '${root1}breakdownrectification/getrectificationdetails';
    final body = {
      "unit_cd" : unitCd,
      "status" : status
    };

    try {
      final response = await http.post(Uri.parse(url), headers: headers, body: json.encode(body));
      final responseBody = json.decode(response.body);
      //  print(responseBody);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => RectificationListModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<String?> submitTargetDetails(String complainNo, String targetEntryDate, String remarks, String unitCd, int compId )async{
    final url = "${root1}breakdownrectification/targetDetailsStore";
    try{
      final body = {
        "complain_no": complainNo,
        "target_entry_date": targetEntryDate,
        "remarks": remarks,
        "unit_cd": unitCd,
        "emp_id": empCd,
        "comp_id": compId
      };
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if(responseBody["status"] == true){

        return responseBody["message"];
      }else{
        throw ApiError.fromResponse(responseBody["message"]);
      }
    }catch(e){
      _handleError(e);
    }
    return null;
  }

  Future<BreakdownDetailsModel?> getBreakdownDetailsList(String unitCode) async {
    final url = '${root1}breakdownrectification/getRectificationBreakTypesSpare';
    final body = {
      "unit_cd" : unitCode,
    };
    final response = await http.post(Uri.parse(url), headers: headers,body: json.encode(body));
    final responseBody = json.decode(response.body);

    try {

      if (responseBody['status'] == true) {
        return BreakdownDetailsModel.fromJson(responseBody['data']);
      }
    } catch (e) {
      _handleError(e);
    }
    return const BreakdownDetailsModel();
  }


  Future<List<BreakReasonModel>> getBreakReasonList(String breakType) async {
    final url = '${root1}breakdownrectification/getReasonByBreakType';
    final body = {
      "break_type" : breakType,
    };
    try {
      final response = await http.post(Uri.parse(url), headers: headers, body: json.encode(body));
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => BreakReasonModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<List<RectifiedByModel>> getRectifiedByList() async {
    final url = '${root1}breakdownrectification/getAcceptedBy';

    try {
      final response = await http.get(Uri.parse(url), headers: headers,);
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => RectifiedByModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  Future<String?> submitRectificationDetails( Map<String, dynamic> details )async{
    final url = "${root1}breakdownrectification/rectificationDetailsStore";


    try{
      final body = details;
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if(responseBody["status"] == true){

        return responseBody["message"];
      }else{
        throw ApiError.fromResponse(responseBody["message"]);
      }
    }catch(e){
      _handleError(e);
    }
    return null;
  }

  Future<String?> submitHandoverDetails(String complainNo,int compId,  String handoverDate, String remarks, String acceptedBy  )async{
    final url = "${root1}breakdownrectification/MachineHandOverDetailsStore";

    try{
      final body = {
        "complain_no": complainNo,
        "comp_id": compId,
        "emp_id": empCd,
        "handover_date": handoverDate,
        "accepted_by": acceptedBy,
        "remarks": remarks,
      };
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if(responseBody["status"] == true){

        return responseBody["message"];
      }else{
        throw ApiError.fromResponse(responseBody["message"]);
      }
    }catch(e){
      _handleError(e);
    }
    return null;
  }

  Future<LocationMachineModel?> getLocationMachineList(String unitCode) async {
    final url = '${root1}complaintregister/getLocationMachineList';
    final body = {
      "unit_cd" : unitCode,
    };
    final response = await http.post(Uri.parse(url), headers: headers,body: json.encode(body));
    final responseBody = json.decode(response.body);

    try {

      if (responseBody['status'] == true) {
        return LocationMachineModel.fromJson(responseBody['data']);
      }
    } catch (e) {
      _handleError(e);
    }
    return const LocationMachineModel();
  }

  Future<ComplaintHistoryModel?> getComplaintHistory(String unitCode, String fromDate,String toDate, String locCd, String machineCd,String status) async {
    final url = '${root1}complaintregister/getComplainRegisterDetailsPdfExcel';
    final body = {
      "unit_cd":unitCode,
      "from_date":fromDate,
      "to_date":toDate,
      "loc_cd":locCd,
      "machine_cd":machineCd,
      "status" : status
    };
     print(body);
    final response = await http.post(Uri.parse(url), headers: headers,body: json.encode(body));
    final responseBody = json.decode(response.body);

    try {

      if (responseBody['status'] == true) {

        return ComplaintHistoryModel.fromJson(responseBody['data']);
      }
    } catch (e) {
      _handleError(e);
    }
    return const ComplaintHistoryModel();
  }

  Future<RectDetailsModel?> getRectDetailsData(String compId) async {
    final url = '${root1}breakdownrectification/getrectificationReasonSpareDetailsData';
    final body = {
      "comp_id" : compId
    };
    final response = await http.post(Uri.parse(url), headers: headers,body: json.encode(body));
    final responseBody = json.decode(response.body);

    try {

      if (responseBody['status'] == true) {
        return RectDetailsModel.fromJson(responseBody['data']);
      }
    } catch (e) {
      _handleError(e);
    }
    return const RectDetailsModel();
  }

  _handleError(var e) {
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}

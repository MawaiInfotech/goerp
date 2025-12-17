import 'package:hive/hive.dart';

const kipAddress = "ipAddress";
const kDomain = "domain";
const kPrefsBox = "prefs_box";
const kEmpCd= "Emp_Id";
const kUnitCd= "unit_cd";
const kUserId= "userId";
const kCompanyName= "comp_name";

final prefsBox = Hive.box(kPrefsBox);
String get empCd => prefsBox.get(kEmpCd, defaultValue: "");
String get unitCd => prefsBox.get(kUnitCd);
String get userId => prefsBox.get(kUserId);
String get compName => prefsBox.get(kCompanyName);

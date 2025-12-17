// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthdayModelImpl _$$BirthdayModelImplFromJson(Map<String, dynamic> json) =>
    _$BirthdayModelImpl(
      emp_number: json['emp_number'] as String? ?? "",
      firstName: json['emp_first_name'] as String? ?? "",
      lastName: json['emp_last_name'] as String? ?? "",
      photoFile: json['photo_file'] as String? ?? "",
      bdate: json['b_day'] as String? ?? "",
      bmonth: json['b_mon'] as String? ?? "",
      department: json['dept_name'] as String? ?? "",
    );

Map<String, dynamic> _$$BirthdayModelImplToJson(_$BirthdayModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.emp_number,
      'emp_first_name': instance.firstName,
      'emp_last_name': instance.lastName,
      'photo_file': instance.photoFile,
      'b_day': instance.bdate,
      'b_mon': instance.bmonth,
      'dept_name': instance.department,
    };

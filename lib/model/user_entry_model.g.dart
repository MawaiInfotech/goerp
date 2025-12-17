// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntryImpl _$$UserEntryImplFromJson(Map<String, dynamic> json) =>
    _$UserEntryImpl(
      employeeId: json['Emp_Id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      userPassword: json['userPass'] as String? ?? '',
      userFirstName: json['userFname'] as String? ?? '',
      unitCode: json['unit_cd'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ) ??
          const {},
    );

Map<String, dynamic> _$$UserEntryImplToJson(_$UserEntryImpl instance) =>
    <String, dynamic>{
      'Emp_Id': instance.employeeId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userPass': instance.userPassword,
      'userFname': instance.userFirstName,
      'unit_cd': instance.unitCode,
      'errors': instance.errors,
    };

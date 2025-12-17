// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_complaint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmitComplaintModelImpl _$$SubmitComplaintModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmitComplaintModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? "",
    );

Map<String, dynamic> _$$SubmitComplaintModelImplToJson(
        _$SubmitComplaintModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

import 'package:freezed_annotation/freezed_annotation.dart';


part 'sos_model.freezed.dart';
part 'sos_model.g.dart';

@freezed
class SosModel with _$SosModel {
  const factory SosModel({
    @JsonKey(name: 'status')@Default(0) int status,
    @JsonKey(name: 'message')@Default('') String message,

  }) = _SosModel;

  factory SosModel.fromJson(Map<String, dynamic> json) =>
      _$SosModelFromJson(json);

}
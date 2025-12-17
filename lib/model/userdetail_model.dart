import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goerp/model/user_entry_model.dart';

part 'userdetail_model.freezed.dart';

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    @Default('') String status,
    @JsonKey(name: 'msg')@Default('') String message,
    @JsonKey(name:'entries') @Default(<UserEntry>[]) List<UserEntry> userEntryList
  }) = _UserDetail;
}


import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entry_model.freezed.dart';
part 'user_entry_model.g.dart';

@freezed
class UserEntry with _$UserEntry {
  const factory UserEntry({
    @JsonKey(name: 'Emp_Id') @Default('') String employeeId,
    @JsonKey(name: 'userId') @Default('') String userId,
    @Default('') String userName,
    @JsonKey(name: 'userPass')@Default('') String userPassword,
    @JsonKey(name: 'userFname') @Default('') String userFirstName,
    @JsonKey(name: 'unit_cd') @Default('') String unitCode,
    @Default({}) Map<String, String?> errors,
  }) = _UserEntry;

  factory UserEntry.fromJson(Map<String, dynamic> json) =>
      _$UserEntryFromJson(json);
}
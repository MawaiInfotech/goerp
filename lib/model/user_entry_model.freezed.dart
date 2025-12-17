// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEntry _$UserEntryFromJson(Map<String, dynamic> json) {
  return _UserEntry.fromJson(json);
}

/// @nodoc
mixin _$UserEntry {
  @JsonKey(name: 'Emp_Id')
  String get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'userPass')
  String get userPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'userFname')
  String get userFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_cd')
  String get unitCode => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntryCopyWith<UserEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntryCopyWith<$Res> {
  factory $UserEntryCopyWith(UserEntry value, $Res Function(UserEntry) then) =
      _$UserEntryCopyWithImpl<$Res, UserEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Emp_Id') String employeeId,
      @JsonKey(name: 'userId') String userId,
      String userName,
      @JsonKey(name: 'userPass') String userPassword,
      @JsonKey(name: 'userFname') String userFirstName,
      @JsonKey(name: 'unit_cd') String unitCode,
      Map<String, String?> errors});
}

/// @nodoc
class _$UserEntryCopyWithImpl<$Res, $Val extends UserEntry>
    implements $UserEntryCopyWith<$Res> {
  _$UserEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPassword = null,
    Object? userFirstName = null,
    Object? unitCode = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntryImplCopyWith<$Res>
    implements $UserEntryCopyWith<$Res> {
  factory _$$UserEntryImplCopyWith(
          _$UserEntryImpl value, $Res Function(_$UserEntryImpl) then) =
      __$$UserEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Emp_Id') String employeeId,
      @JsonKey(name: 'userId') String userId,
      String userName,
      @JsonKey(name: 'userPass') String userPassword,
      @JsonKey(name: 'userFname') String userFirstName,
      @JsonKey(name: 'unit_cd') String unitCode,
      Map<String, String?> errors});
}

/// @nodoc
class __$$UserEntryImplCopyWithImpl<$Res>
    extends _$UserEntryCopyWithImpl<$Res, _$UserEntryImpl>
    implements _$$UserEntryImplCopyWith<$Res> {
  __$$UserEntryImplCopyWithImpl(
      _$UserEntryImpl _value, $Res Function(_$UserEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPassword = null,
    Object? userFirstName = null,
    Object? unitCode = null,
    Object? errors = null,
  }) {
    return _then(_$UserEntryImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntryImpl implements _UserEntry {
  const _$UserEntryImpl(
      {@JsonKey(name: 'Emp_Id') this.employeeId = '',
      @JsonKey(name: 'userId') this.userId = '',
      this.userName = '',
      @JsonKey(name: 'userPass') this.userPassword = '',
      @JsonKey(name: 'userFname') this.userFirstName = '',
      @JsonKey(name: 'unit_cd') this.unitCode = '',
      final Map<String, String?> errors = const {}})
      : _errors = errors;

  factory _$UserEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntryImplFromJson(json);

  @override
  @JsonKey(name: 'Emp_Id')
  final String employeeId;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey(name: 'userPass')
  final String userPassword;
  @override
  @JsonKey(name: 'userFname')
  final String userFirstName;
  @override
  @JsonKey(name: 'unit_cd')
  final String unitCode;
  final Map<String, String?> _errors;
  @override
  @JsonKey()
  Map<String, String?> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'UserEntry(employeeId: $employeeId, userId: $userId, userName: $userName, userPassword: $userPassword, userFirstName: $userFirstName, unitCode: $unitCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntryImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.unitCode, unitCode) ||
                other.unitCode == unitCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      employeeId,
      userId,
      userName,
      userPassword,
      userFirstName,
      unitCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntryImplCopyWith<_$UserEntryImpl> get copyWith =>
      __$$UserEntryImplCopyWithImpl<_$UserEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntryImplToJson(
      this,
    );
  }
}

abstract class _UserEntry implements UserEntry {
  const factory _UserEntry(
      {@JsonKey(name: 'Emp_Id') final String employeeId,
      @JsonKey(name: 'userId') final String userId,
      final String userName,
      @JsonKey(name: 'userPass') final String userPassword,
      @JsonKey(name: 'userFname') final String userFirstName,
      @JsonKey(name: 'unit_cd') final String unitCode,
      final Map<String, String?> errors}) = _$UserEntryImpl;

  factory _UserEntry.fromJson(Map<String, dynamic> json) =
      _$UserEntryImpl.fromJson;

  @override
  @JsonKey(name: 'Emp_Id')
  String get employeeId;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  String get userName;
  @override
  @JsonKey(name: 'userPass')
  String get userPassword;
  @override
  @JsonKey(name: 'userFname')
  String get userFirstName;
  @override
  @JsonKey(name: 'unit_cd')
  String get unitCode;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$UserEntryImplCopyWith<_$UserEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

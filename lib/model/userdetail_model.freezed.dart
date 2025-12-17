// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userdetail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetail {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'entries')
  List<UserEntry> get userEntryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'entries') List<UserEntry> userEntryList});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? userEntryList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userEntryList: null == userEntryList
          ? _value.userEntryList
          : userEntryList // ignore: cast_nullable_to_non_nullable
              as List<UserEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'entries') List<UserEntry> userEntryList});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? userEntryList = null,
  }) {
    return _then(_$UserDetailImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userEntryList: null == userEntryList
          ? _value._userEntryList
          : userEntryList // ignore: cast_nullable_to_non_nullable
              as List<UserEntry>,
    ));
  }
}

/// @nodoc

class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {this.status = '',
      @JsonKey(name: 'msg') this.message = '',
      @JsonKey(name: 'entries')
      final List<UserEntry> userEntryList = const <UserEntry>[]})
      : _userEntryList = userEntryList;

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'msg')
  final String message;
  final List<UserEntry> _userEntryList;
  @override
  @JsonKey(name: 'entries')
  List<UserEntry> get userEntryList {
    if (_userEntryList is EqualUnmodifiableListView) return _userEntryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userEntryList);
  }

  @override
  String toString() {
    return 'UserDetail(status: $status, message: $message, userEntryList: $userEntryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._userEntryList, _userEntryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_userEntryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
          {final String status,
          @JsonKey(name: 'msg') final String message,
          @JsonKey(name: 'entries') final List<UserEntry> userEntryList}) =
      _$UserDetailImpl;

  @override
  String get status;
  @override
  @JsonKey(name: 'msg')
  String get message;
  @override
  @JsonKey(name: 'entries')
  List<UserEntry> get userEntryList;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

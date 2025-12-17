// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SosModel _$SosModelFromJson(Map<String, dynamic> json) {
  return _SosModel.fromJson(json);
}

/// @nodoc
mixin _$SosModel {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SosModelCopyWith<SosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SosModelCopyWith<$Res> {
  factory $SosModelCopyWith(SosModel value, $Res Function(SosModel) then) =
      _$SosModelCopyWithImpl<$Res, SosModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$SosModelCopyWithImpl<$Res, $Val extends SosModel>
    implements $SosModelCopyWith<$Res> {
  _$SosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SosModelImplCopyWith<$Res>
    implements $SosModelCopyWith<$Res> {
  factory _$$SosModelImplCopyWith(
          _$SosModelImpl value, $Res Function(_$SosModelImpl) then) =
      __$$SosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$SosModelImplCopyWithImpl<$Res>
    extends _$SosModelCopyWithImpl<$Res, _$SosModelImpl>
    implements _$$SosModelImplCopyWith<$Res> {
  __$$SosModelImplCopyWithImpl(
      _$SosModelImpl _value, $Res Function(_$SosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$SosModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SosModelImpl implements _SosModel {
  const _$SosModelImpl(
      {@JsonKey(name: 'status') this.status = 0,
      @JsonKey(name: 'message') this.message = ''});

  factory _$SosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SosModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'SosModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SosModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SosModelImplCopyWith<_$SosModelImpl> get copyWith =>
      __$$SosModelImplCopyWithImpl<_$SosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SosModelImplToJson(
      this,
    );
  }
}

abstract class _SosModel implements SosModel {
  const factory _SosModel(
      {@JsonKey(name: 'status') final int status,
      @JsonKey(name: 'message') final String message}) = _$SosModelImpl;

  factory _SosModel.fromJson(Map<String, dynamic> json) =
      _$SosModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SosModelImplCopyWith<_$SosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

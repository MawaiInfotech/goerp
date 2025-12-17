// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_complaint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmitComplaintModel _$SubmitComplaintModelFromJson(Map<String, dynamic> json) {
  return _SubmitComplaintModel.fromJson(json);
}

/// @nodoc
mixin _$SubmitComplaintModel {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitComplaintModelCopyWith<SubmitComplaintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitComplaintModelCopyWith<$Res> {
  factory $SubmitComplaintModelCopyWith(SubmitComplaintModel value,
          $Res Function(SubmitComplaintModel) then) =
      _$SubmitComplaintModelCopyWithImpl<$Res, SubmitComplaintModel>;
  @useResult
  $Res call({bool status, String message});
}

/// @nodoc
class _$SubmitComplaintModelCopyWithImpl<$Res,
        $Val extends SubmitComplaintModel>
    implements $SubmitComplaintModelCopyWith<$Res> {
  _$SubmitComplaintModelCopyWithImpl(this._value, this._then);

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
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitComplaintModelImplCopyWith<$Res>
    implements $SubmitComplaintModelCopyWith<$Res> {
  factory _$$SubmitComplaintModelImplCopyWith(_$SubmitComplaintModelImpl value,
          $Res Function(_$SubmitComplaintModelImpl) then) =
      __$$SubmitComplaintModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message});
}

/// @nodoc
class __$$SubmitComplaintModelImplCopyWithImpl<$Res>
    extends _$SubmitComplaintModelCopyWithImpl<$Res, _$SubmitComplaintModelImpl>
    implements _$$SubmitComplaintModelImplCopyWith<$Res> {
  __$$SubmitComplaintModelImplCopyWithImpl(_$SubmitComplaintModelImpl _value,
      $Res Function(_$SubmitComplaintModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$SubmitComplaintModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitComplaintModelImpl implements _SubmitComplaintModel {
  const _$SubmitComplaintModelImpl({this.status = false, this.message = ""});

  factory _$SubmitComplaintModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitComplaintModelImplFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SubmitComplaintModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitComplaintModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitComplaintModelImplCopyWith<_$SubmitComplaintModelImpl>
      get copyWith =>
          __$$SubmitComplaintModelImplCopyWithImpl<_$SubmitComplaintModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitComplaintModelImplToJson(
      this,
    );
  }
}

abstract class _SubmitComplaintModel implements SubmitComplaintModel {
  const factory _SubmitComplaintModel(
      {final bool status, final String message}) = _$SubmitComplaintModelImpl;

  factory _SubmitComplaintModel.fromJson(Map<String, dynamic> json) =
      _$SubmitComplaintModelImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SubmitComplaintModelImplCopyWith<_$SubmitComplaintModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceScannerState {
  AttendanceScannerModel get attendanceScannerModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        loading,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        content,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        success,
    required TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult? Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceScannerStateCopyWith<AttendanceScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceScannerStateCopyWith<$Res> {
  factory $AttendanceScannerStateCopyWith(AttendanceScannerState value,
          $Res Function(AttendanceScannerState) then) =
      _$AttendanceScannerStateCopyWithImpl<$Res, AttendanceScannerState>;
  @useResult
  $Res call({AttendanceScannerModel attendanceScannerModel});

  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel;
}

/// @nodoc
class _$AttendanceScannerStateCopyWithImpl<$Res,
        $Val extends AttendanceScannerState>
    implements $AttendanceScannerStateCopyWith<$Res> {
  _$AttendanceScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceScannerModel = null,
  }) {
    return _then(_value.copyWith(
      attendanceScannerModel: null == attendanceScannerModel
          ? _value.attendanceScannerModel
          : attendanceScannerModel // ignore: cast_nullable_to_non_nullable
              as AttendanceScannerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel {
    return $AttendanceScannerModelCopyWith<$Res>(_value.attendanceScannerModel,
        (value) {
      return _then(_value.copyWith(attendanceScannerModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $AttendanceScannerStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceScannerModel attendanceScannerModel});

  @override
  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AttendanceScannerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceScannerModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == attendanceScannerModel
          ? _value.attendanceScannerModel
          : attendanceScannerModel // ignore: cast_nullable_to_non_nullable
              as AttendanceScannerModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.attendanceScannerModel);

  @override
  final AttendanceScannerModel attendanceScannerModel;

  @override
  String toString() {
    return 'AttendanceScannerState.loading(attendanceScannerModel: $attendanceScannerModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.attendanceScannerModel, attendanceScannerModel) ||
                other.attendanceScannerModel == attendanceScannerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceScannerModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        loading,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        content,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        success,
    required TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)
        failed,
  }) {
    return loading(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult? Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
  }) {
    return loading?.call(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(attendanceScannerModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AttendanceScannerState {
  const factory _Loading(final AttendanceScannerModel attendanceScannerModel) =
      _$LoadingImpl;

  @override
  AttendanceScannerModel get attendanceScannerModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $AttendanceScannerStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceScannerModel attendanceScannerModel});

  @override
  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$AttendanceScannerStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceScannerModel = null,
  }) {
    return _then(_$ContentImpl(
      null == attendanceScannerModel
          ? _value.attendanceScannerModel
          : attendanceScannerModel // ignore: cast_nullable_to_non_nullable
              as AttendanceScannerModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.attendanceScannerModel);

  @override
  final AttendanceScannerModel attendanceScannerModel;

  @override
  String toString() {
    return 'AttendanceScannerState.content(attendanceScannerModel: $attendanceScannerModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.attendanceScannerModel, attendanceScannerModel) ||
                other.attendanceScannerModel == attendanceScannerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceScannerModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        loading,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        content,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        success,
    required TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)
        failed,
  }) {
    return content(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult? Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
  }) {
    return content?.call(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(attendanceScannerModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements AttendanceScannerState {
  const factory _Content(final AttendanceScannerModel attendanceScannerModel) =
      _$ContentImpl;

  @override
  AttendanceScannerModel get attendanceScannerModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $AttendanceScannerStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceScannerModel attendanceScannerModel});

  @override
  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AttendanceScannerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceScannerModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == attendanceScannerModel
          ? _value.attendanceScannerModel
          : attendanceScannerModel // ignore: cast_nullable_to_non_nullable
              as AttendanceScannerModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.attendanceScannerModel);

  @override
  final AttendanceScannerModel attendanceScannerModel;

  @override
  String toString() {
    return 'AttendanceScannerState.success(attendanceScannerModel: $attendanceScannerModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.attendanceScannerModel, attendanceScannerModel) ||
                other.attendanceScannerModel == attendanceScannerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceScannerModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        loading,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        content,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        success,
    required TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)
        failed,
  }) {
    return success(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult? Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
  }) {
    return success?.call(attendanceScannerModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(attendanceScannerModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AttendanceScannerState {
  const factory _Success(final AttendanceScannerModel attendanceScannerModel) =
      _$SuccessImpl;

  @override
  AttendanceScannerModel get attendanceScannerModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $AttendanceScannerStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceScannerModel attendanceScannerModel, String message});

  @override
  $AttendanceScannerModelCopyWith<$Res> get attendanceScannerModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AttendanceScannerStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceScannerModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == attendanceScannerModel
          ? _value.attendanceScannerModel
          : attendanceScannerModel // ignore: cast_nullable_to_non_nullable
              as AttendanceScannerModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.attendanceScannerModel, this.message);

  @override
  final AttendanceScannerModel attendanceScannerModel;
  @override
  final String message;

  @override
  String toString() {
    return 'AttendanceScannerState.failed(attendanceScannerModel: $attendanceScannerModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.attendanceScannerModel, attendanceScannerModel) ||
                other.attendanceScannerModel == attendanceScannerModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceScannerModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        loading,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        content,
    required TResult Function(AttendanceScannerModel attendanceScannerModel)
        success,
    required TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)
        failed,
  }) {
    return failed(attendanceScannerModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult? Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult? Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
  }) {
    return failed?.call(attendanceScannerModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceScannerModel attendanceScannerModel)? loading,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? content,
    TResult Function(AttendanceScannerModel attendanceScannerModel)? success,
    TResult Function(
            AttendanceScannerModel attendanceScannerModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(attendanceScannerModel, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AttendanceScannerState {
  const factory _Failed(final AttendanceScannerModel attendanceScannerModel,
      final String message) = _$FailedImpl;

  @override
  AttendanceScannerModel get attendanceScannerModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

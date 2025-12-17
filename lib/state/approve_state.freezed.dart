// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApproveState {
  ApproveModel get approveModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApproveModel approveModel) loading,
    required TResult Function(ApproveModel approveModel) content,
    required TResult Function(ApproveModel approveModel) success,
    required TResult Function(ApproveModel approveModel, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApproveModel approveModel)? loading,
    TResult? Function(ApproveModel approveModel)? content,
    TResult? Function(ApproveModel approveModel)? success,
    TResult? Function(ApproveModel approveModel, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApproveModel approveModel)? loading,
    TResult Function(ApproveModel approveModel)? content,
    TResult Function(ApproveModel approveModel)? success,
    TResult Function(ApproveModel approveModel, String message)? failed,
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
  $ApproveStateCopyWith<ApproveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveStateCopyWith<$Res> {
  factory $ApproveStateCopyWith(
          ApproveState value, $Res Function(ApproveState) then) =
      _$ApproveStateCopyWithImpl<$Res, ApproveState>;
  @useResult
  $Res call({ApproveModel approveModel});

  $ApproveModelCopyWith<$Res> get approveModel;
}

/// @nodoc
class _$ApproveStateCopyWithImpl<$Res, $Val extends ApproveState>
    implements $ApproveStateCopyWith<$Res> {
  _$ApproveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveModel = null,
  }) {
    return _then(_value.copyWith(
      approveModel: null == approveModel
          ? _value.approveModel
          : approveModel // ignore: cast_nullable_to_non_nullable
              as ApproveModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApproveModelCopyWith<$Res> get approveModel {
    return $ApproveModelCopyWith<$Res>(_value.approveModel, (value) {
      return _then(_value.copyWith(approveModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ApproveStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApproveModel approveModel});

  @override
  $ApproveModelCopyWith<$Res> get approveModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ApproveStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == approveModel
          ? _value.approveModel
          : approveModel // ignore: cast_nullable_to_non_nullable
              as ApproveModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.approveModel);

  @override
  final ApproveModel approveModel;

  @override
  String toString() {
    return 'ApproveState.loading(approveModel: $approveModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.approveModel, approveModel) ||
                other.approveModel == approveModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approveModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApproveModel approveModel) loading,
    required TResult Function(ApproveModel approveModel) content,
    required TResult Function(ApproveModel approveModel) success,
    required TResult Function(ApproveModel approveModel, String message) failed,
  }) {
    return loading(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApproveModel approveModel)? loading,
    TResult? Function(ApproveModel approveModel)? content,
    TResult? Function(ApproveModel approveModel)? success,
    TResult? Function(ApproveModel approveModel, String message)? failed,
  }) {
    return loading?.call(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApproveModel approveModel)? loading,
    TResult Function(ApproveModel approveModel)? content,
    TResult Function(ApproveModel approveModel)? success,
    TResult Function(ApproveModel approveModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(approveModel);
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

abstract class _Loading implements ApproveState {
  const factory _Loading(final ApproveModel approveModel) = _$LoadingImpl;

  @override
  ApproveModel get approveModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ApproveStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApproveModel approveModel});

  @override
  $ApproveModelCopyWith<$Res> get approveModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ApproveStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveModel = null,
  }) {
    return _then(_$ContentImpl(
      null == approveModel
          ? _value.approveModel
          : approveModel // ignore: cast_nullable_to_non_nullable
              as ApproveModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.approveModel);

  @override
  final ApproveModel approveModel;

  @override
  String toString() {
    return 'ApproveState.content(approveModel: $approveModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.approveModel, approveModel) ||
                other.approveModel == approveModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approveModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApproveModel approveModel) loading,
    required TResult Function(ApproveModel approveModel) content,
    required TResult Function(ApproveModel approveModel) success,
    required TResult Function(ApproveModel approveModel, String message) failed,
  }) {
    return content(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApproveModel approveModel)? loading,
    TResult? Function(ApproveModel approveModel)? content,
    TResult? Function(ApproveModel approveModel)? success,
    TResult? Function(ApproveModel approveModel, String message)? failed,
  }) {
    return content?.call(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApproveModel approveModel)? loading,
    TResult Function(ApproveModel approveModel)? content,
    TResult Function(ApproveModel approveModel)? success,
    TResult Function(ApproveModel approveModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(approveModel);
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

abstract class _Content implements ApproveState {
  const factory _Content(final ApproveModel approveModel) = _$ContentImpl;

  @override
  ApproveModel get approveModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ApproveStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApproveModel approveModel});

  @override
  $ApproveModelCopyWith<$Res> get approveModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ApproveStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == approveModel
          ? _value.approveModel
          : approveModel // ignore: cast_nullable_to_non_nullable
              as ApproveModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.approveModel);

  @override
  final ApproveModel approveModel;

  @override
  String toString() {
    return 'ApproveState.success(approveModel: $approveModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.approveModel, approveModel) ||
                other.approveModel == approveModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approveModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApproveModel approveModel) loading,
    required TResult Function(ApproveModel approveModel) content,
    required TResult Function(ApproveModel approveModel) success,
    required TResult Function(ApproveModel approveModel, String message) failed,
  }) {
    return success(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApproveModel approveModel)? loading,
    TResult? Function(ApproveModel approveModel)? content,
    TResult? Function(ApproveModel approveModel)? success,
    TResult? Function(ApproveModel approveModel, String message)? failed,
  }) {
    return success?.call(approveModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApproveModel approveModel)? loading,
    TResult Function(ApproveModel approveModel)? content,
    TResult Function(ApproveModel approveModel)? success,
    TResult Function(ApproveModel approveModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(approveModel);
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

abstract class _Success implements ApproveState {
  const factory _Success(final ApproveModel approveModel) = _$SuccessImpl;

  @override
  ApproveModel get approveModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ApproveStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApproveModel approveModel, String message});

  @override
  $ApproveModelCopyWith<$Res> get approveModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ApproveStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == approveModel
          ? _value.approveModel
          : approveModel // ignore: cast_nullable_to_non_nullable
              as ApproveModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.approveModel, this.message);

  @override
  final ApproveModel approveModel;
  @override
  final String message;

  @override
  String toString() {
    return 'ApproveState.failed(approveModel: $approveModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.approveModel, approveModel) ||
                other.approveModel == approveModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approveModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApproveModel approveModel) loading,
    required TResult Function(ApproveModel approveModel) content,
    required TResult Function(ApproveModel approveModel) success,
    required TResult Function(ApproveModel approveModel, String message) failed,
  }) {
    return failed(approveModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApproveModel approveModel)? loading,
    TResult? Function(ApproveModel approveModel)? content,
    TResult? Function(ApproveModel approveModel)? success,
    TResult? Function(ApproveModel approveModel, String message)? failed,
  }) {
    return failed?.call(approveModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApproveModel approveModel)? loading,
    TResult Function(ApproveModel approveModel)? content,
    TResult Function(ApproveModel approveModel)? success,
    TResult Function(ApproveModel approveModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(approveModel, message);
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

abstract class _Failed implements ApproveState {
  const factory _Failed(final ApproveModel approveModel, final String message) =
      _$FailedImpl;

  @override
  ApproveModel get approveModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

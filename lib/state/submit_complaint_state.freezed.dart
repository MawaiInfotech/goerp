// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_complaint_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmitComplaintState {
  SubmitComplaintModel get submitComplaintModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        loading,
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        content,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)
        success,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult? Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult Function(SubmitComplaintModel submitComplaintModel, String message)?
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
  $SubmitComplaintStateCopyWith<SubmitComplaintState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitComplaintStateCopyWith<$Res> {
  factory $SubmitComplaintStateCopyWith(SubmitComplaintState value,
          $Res Function(SubmitComplaintState) then) =
      _$SubmitComplaintStateCopyWithImpl<$Res, SubmitComplaintState>;
  @useResult
  $Res call({SubmitComplaintModel submitComplaintModel});

  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel;
}

/// @nodoc
class _$SubmitComplaintStateCopyWithImpl<$Res,
        $Val extends SubmitComplaintState>
    implements $SubmitComplaintStateCopyWith<$Res> {
  _$SubmitComplaintStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitComplaintModel = null,
  }) {
    return _then(_value.copyWith(
      submitComplaintModel: null == submitComplaintModel
          ? _value.submitComplaintModel
          : submitComplaintModel // ignore: cast_nullable_to_non_nullable
              as SubmitComplaintModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel {
    return $SubmitComplaintModelCopyWith<$Res>(_value.submitComplaintModel,
        (value) {
      return _then(_value.copyWith(submitComplaintModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SubmitComplaintStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubmitComplaintModel submitComplaintModel});

  @override
  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SubmitComplaintStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitComplaintModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == submitComplaintModel
          ? _value.submitComplaintModel
          : submitComplaintModel // ignore: cast_nullable_to_non_nullable
              as SubmitComplaintModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.submitComplaintModel);

  @override
  final SubmitComplaintModel submitComplaintModel;

  @override
  String toString() {
    return 'SubmitComplaintState.loading(submitComplaintModel: $submitComplaintModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.submitComplaintModel, submitComplaintModel) ||
                other.submitComplaintModel == submitComplaintModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitComplaintModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        loading,
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        content,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)
        success,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String message)
        failed,
  }) {
    return loading(submitComplaintModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult? Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String message)?
        failed,
  }) {
    return loading?.call(submitComplaintModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult Function(SubmitComplaintModel submitComplaintModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(submitComplaintModel);
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

abstract class _Loading implements SubmitComplaintState {
  const factory _Loading(final SubmitComplaintModel submitComplaintModel) =
      _$LoadingImpl;

  @override
  SubmitComplaintModel get submitComplaintModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $SubmitComplaintStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubmitComplaintModel submitComplaintModel});

  @override
  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$SubmitComplaintStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitComplaintModel = null,
  }) {
    return _then(_$ContentImpl(
      null == submitComplaintModel
          ? _value.submitComplaintModel
          : submitComplaintModel // ignore: cast_nullable_to_non_nullable
              as SubmitComplaintModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.submitComplaintModel);

  @override
  final SubmitComplaintModel submitComplaintModel;

  @override
  String toString() {
    return 'SubmitComplaintState.content(submitComplaintModel: $submitComplaintModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.submitComplaintModel, submitComplaintModel) ||
                other.submitComplaintModel == submitComplaintModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitComplaintModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        loading,
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        content,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)
        success,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String message)
        failed,
  }) {
    return content(submitComplaintModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult? Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String message)?
        failed,
  }) {
    return content?.call(submitComplaintModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult Function(SubmitComplaintModel submitComplaintModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(submitComplaintModel);
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

abstract class _Content implements SubmitComplaintState {
  const factory _Content(final SubmitComplaintModel submitComplaintModel) =
      _$ContentImpl;

  @override
  SubmitComplaintModel get submitComplaintModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $SubmitComplaintStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubmitComplaintModel submitComplaintModel, String? message});

  @override
  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SubmitComplaintStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitComplaintModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == submitComplaintModel
          ? _value.submitComplaintModel
          : submitComplaintModel // ignore: cast_nullable_to_non_nullable
              as SubmitComplaintModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.submitComplaintModel, this.message);

  @override
  final SubmitComplaintModel submitComplaintModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'SubmitComplaintState.success(submitComplaintModel: $submitComplaintModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.submitComplaintModel, submitComplaintModel) ||
                other.submitComplaintModel == submitComplaintModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitComplaintModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        loading,
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        content,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)
        success,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String message)
        failed,
  }) {
    return success(submitComplaintModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult? Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String message)?
        failed,
  }) {
    return success?.call(submitComplaintModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult Function(SubmitComplaintModel submitComplaintModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(submitComplaintModel, message);
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

abstract class _Success implements SubmitComplaintState {
  const factory _Success(final SubmitComplaintModel submitComplaintModel,
      final String? message) = _$SuccessImpl;

  @override
  SubmitComplaintModel get submitComplaintModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $SubmitComplaintStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubmitComplaintModel submitComplaintModel, String message});

  @override
  $SubmitComplaintModelCopyWith<$Res> get submitComplaintModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$SubmitComplaintStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitComplaintModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == submitComplaintModel
          ? _value.submitComplaintModel
          : submitComplaintModel // ignore: cast_nullable_to_non_nullable
              as SubmitComplaintModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.submitComplaintModel, this.message);

  @override
  final SubmitComplaintModel submitComplaintModel;
  @override
  final String message;

  @override
  String toString() {
    return 'SubmitComplaintState.failed(submitComplaintModel: $submitComplaintModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.submitComplaintModel, submitComplaintModel) ||
                other.submitComplaintModel == submitComplaintModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitComplaintModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        loading,
    required TResult Function(SubmitComplaintModel submitComplaintModel)
        content,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)
        success,
    required TResult Function(
            SubmitComplaintModel submitComplaintModel, String message)
        failed,
  }) {
    return failed(submitComplaintModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult? Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult? Function(
            SubmitComplaintModel submitComplaintModel, String message)?
        failed,
  }) {
    return failed?.call(submitComplaintModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubmitComplaintModel submitComplaintModel)? loading,
    TResult Function(SubmitComplaintModel submitComplaintModel)? content,
    TResult Function(
            SubmitComplaintModel submitComplaintModel, String? message)?
        success,
    TResult Function(SubmitComplaintModel submitComplaintModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(submitComplaintModel, message);
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

abstract class _Failed implements SubmitComplaintState {
  const factory _Failed(final SubmitComplaintModel submitComplaintModel,
      final String message) = _$FailedImpl;

  @override
  SubmitComplaintModel get submitComplaintModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

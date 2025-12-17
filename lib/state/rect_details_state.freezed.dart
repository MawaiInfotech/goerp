// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rect_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RectDetailsState {
  RectDetailsModel get rectDetailsModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RectDetailsModel rectDetailsModel) loading,
    required TResult Function(RectDetailsModel rectDetailsModel) content,
    required TResult Function(RectDetailsModel rectDetailsModel) success,
    required TResult Function(
            RectDetailsModel rectDetailsModel, dynamic message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RectDetailsModel rectDetailsModel)? loading,
    TResult? Function(RectDetailsModel rectDetailsModel)? content,
    TResult? Function(RectDetailsModel rectDetailsModel)? success,
    TResult? Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RectDetailsModel rectDetailsModel)? loading,
    TResult Function(RectDetailsModel rectDetailsModel)? content,
    TResult Function(RectDetailsModel rectDetailsModel)? success,
    TResult Function(RectDetailsModel rectDetailsModel, dynamic message)?
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
  $RectDetailsStateCopyWith<RectDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectDetailsStateCopyWith<$Res> {
  factory $RectDetailsStateCopyWith(
          RectDetailsState value, $Res Function(RectDetailsState) then) =
      _$RectDetailsStateCopyWithImpl<$Res, RectDetailsState>;
  @useResult
  $Res call({RectDetailsModel rectDetailsModel});

  $RectDetailsModelCopyWith<$Res> get rectDetailsModel;
}

/// @nodoc
class _$RectDetailsStateCopyWithImpl<$Res, $Val extends RectDetailsState>
    implements $RectDetailsStateCopyWith<$Res> {
  _$RectDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectDetailsModel = null,
  }) {
    return _then(_value.copyWith(
      rectDetailsModel: null == rectDetailsModel
          ? _value.rectDetailsModel
          : rectDetailsModel // ignore: cast_nullable_to_non_nullable
              as RectDetailsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RectDetailsModelCopyWith<$Res> get rectDetailsModel {
    return $RectDetailsModelCopyWith<$Res>(_value.rectDetailsModel, (value) {
      return _then(_value.copyWith(rectDetailsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $RectDetailsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RectDetailsModel rectDetailsModel});

  @override
  $RectDetailsModelCopyWith<$Res> get rectDetailsModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RectDetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectDetailsModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == rectDetailsModel
          ? _value.rectDetailsModel
          : rectDetailsModel // ignore: cast_nullable_to_non_nullable
              as RectDetailsModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.rectDetailsModel);

  @override
  final RectDetailsModel rectDetailsModel;

  @override
  String toString() {
    return 'RectDetailsState.loading(rectDetailsModel: $rectDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.rectDetailsModel, rectDetailsModel) ||
                other.rectDetailsModel == rectDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rectDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RectDetailsModel rectDetailsModel) loading,
    required TResult Function(RectDetailsModel rectDetailsModel) content,
    required TResult Function(RectDetailsModel rectDetailsModel) success,
    required TResult Function(
            RectDetailsModel rectDetailsModel, dynamic message)
        failed,
  }) {
    return loading(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RectDetailsModel rectDetailsModel)? loading,
    TResult? Function(RectDetailsModel rectDetailsModel)? content,
    TResult? Function(RectDetailsModel rectDetailsModel)? success,
    TResult? Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
  }) {
    return loading?.call(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RectDetailsModel rectDetailsModel)? loading,
    TResult Function(RectDetailsModel rectDetailsModel)? content,
    TResult Function(RectDetailsModel rectDetailsModel)? success,
    TResult Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(rectDetailsModel);
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

abstract class _Loading implements RectDetailsState {
  const factory _Loading(final RectDetailsModel rectDetailsModel) =
      _$LoadingImpl;

  @override
  RectDetailsModel get rectDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $RectDetailsStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RectDetailsModel rectDetailsModel});

  @override
  $RectDetailsModelCopyWith<$Res> get rectDetailsModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$RectDetailsStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectDetailsModel = null,
  }) {
    return _then(_$ContentImpl(
      null == rectDetailsModel
          ? _value.rectDetailsModel
          : rectDetailsModel // ignore: cast_nullable_to_non_nullable
              as RectDetailsModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.rectDetailsModel);

  @override
  final RectDetailsModel rectDetailsModel;

  @override
  String toString() {
    return 'RectDetailsState.content(rectDetailsModel: $rectDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.rectDetailsModel, rectDetailsModel) ||
                other.rectDetailsModel == rectDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rectDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RectDetailsModel rectDetailsModel) loading,
    required TResult Function(RectDetailsModel rectDetailsModel) content,
    required TResult Function(RectDetailsModel rectDetailsModel) success,
    required TResult Function(
            RectDetailsModel rectDetailsModel, dynamic message)
        failed,
  }) {
    return content(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RectDetailsModel rectDetailsModel)? loading,
    TResult? Function(RectDetailsModel rectDetailsModel)? content,
    TResult? Function(RectDetailsModel rectDetailsModel)? success,
    TResult? Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
  }) {
    return content?.call(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RectDetailsModel rectDetailsModel)? loading,
    TResult Function(RectDetailsModel rectDetailsModel)? content,
    TResult Function(RectDetailsModel rectDetailsModel)? success,
    TResult Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(rectDetailsModel);
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

abstract class _Content implements RectDetailsState {
  const factory _Content(final RectDetailsModel rectDetailsModel) =
      _$ContentImpl;

  @override
  RectDetailsModel get rectDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $RectDetailsStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RectDetailsModel rectDetailsModel});

  @override
  $RectDetailsModelCopyWith<$Res> get rectDetailsModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RectDetailsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectDetailsModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == rectDetailsModel
          ? _value.rectDetailsModel
          : rectDetailsModel // ignore: cast_nullable_to_non_nullable
              as RectDetailsModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.rectDetailsModel);

  @override
  final RectDetailsModel rectDetailsModel;

  @override
  String toString() {
    return 'RectDetailsState.success(rectDetailsModel: $rectDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.rectDetailsModel, rectDetailsModel) ||
                other.rectDetailsModel == rectDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rectDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RectDetailsModel rectDetailsModel) loading,
    required TResult Function(RectDetailsModel rectDetailsModel) content,
    required TResult Function(RectDetailsModel rectDetailsModel) success,
    required TResult Function(
            RectDetailsModel rectDetailsModel, dynamic message)
        failed,
  }) {
    return success(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RectDetailsModel rectDetailsModel)? loading,
    TResult? Function(RectDetailsModel rectDetailsModel)? content,
    TResult? Function(RectDetailsModel rectDetailsModel)? success,
    TResult? Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
  }) {
    return success?.call(rectDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RectDetailsModel rectDetailsModel)? loading,
    TResult Function(RectDetailsModel rectDetailsModel)? content,
    TResult Function(RectDetailsModel rectDetailsModel)? success,
    TResult Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(rectDetailsModel);
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

abstract class _Success implements RectDetailsState {
  const factory _Success(final RectDetailsModel rectDetailsModel) =
      _$SuccessImpl;

  @override
  RectDetailsModel get rectDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $RectDetailsStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RectDetailsModel rectDetailsModel, dynamic message});

  @override
  $RectDetailsModelCopyWith<$Res> get rectDetailsModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$RectDetailsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectDetailsModel = null,
    Object? message = freezed,
  }) {
    return _then(_$FailedImpl(
      null == rectDetailsModel
          ? _value.rectDetailsModel
          : rectDetailsModel // ignore: cast_nullable_to_non_nullable
              as RectDetailsModel,
      freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.rectDetailsModel, this.message);

  @override
  final RectDetailsModel rectDetailsModel;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'RectDetailsState.failed(rectDetailsModel: $rectDetailsModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.rectDetailsModel, rectDetailsModel) ||
                other.rectDetailsModel == rectDetailsModel) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rectDetailsModel,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RectDetailsModel rectDetailsModel) loading,
    required TResult Function(RectDetailsModel rectDetailsModel) content,
    required TResult Function(RectDetailsModel rectDetailsModel) success,
    required TResult Function(
            RectDetailsModel rectDetailsModel, dynamic message)
        failed,
  }) {
    return failed(rectDetailsModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RectDetailsModel rectDetailsModel)? loading,
    TResult? Function(RectDetailsModel rectDetailsModel)? content,
    TResult? Function(RectDetailsModel rectDetailsModel)? success,
    TResult? Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
  }) {
    return failed?.call(rectDetailsModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RectDetailsModel rectDetailsModel)? loading,
    TResult Function(RectDetailsModel rectDetailsModel)? content,
    TResult Function(RectDetailsModel rectDetailsModel)? success,
    TResult Function(RectDetailsModel rectDetailsModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(rectDetailsModel, message);
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

abstract class _Failed implements RectDetailsState {
  const factory _Failed(
          final RectDetailsModel rectDetailsModel, final dynamic message) =
      _$FailedImpl;

  @override
  RectDetailsModel get rectDetailsModel;
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

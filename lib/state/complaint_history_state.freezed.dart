// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComplaintHistoryState {
  ComplaintHistoryModel get complaintHistoryModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        loading,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        content,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        success,
    required TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult? Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
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
  $ComplaintHistoryStateCopyWith<ComplaintHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintHistoryStateCopyWith<$Res> {
  factory $ComplaintHistoryStateCopyWith(ComplaintHistoryState value,
          $Res Function(ComplaintHistoryState) then) =
      _$ComplaintHistoryStateCopyWithImpl<$Res, ComplaintHistoryState>;
  @useResult
  $Res call({ComplaintHistoryModel complaintHistoryModel});

  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel;
}

/// @nodoc
class _$ComplaintHistoryStateCopyWithImpl<$Res,
        $Val extends ComplaintHistoryState>
    implements $ComplaintHistoryStateCopyWith<$Res> {
  _$ComplaintHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintHistoryModel = null,
  }) {
    return _then(_value.copyWith(
      complaintHistoryModel: null == complaintHistoryModel
          ? _value.complaintHistoryModel
          : complaintHistoryModel // ignore: cast_nullable_to_non_nullable
              as ComplaintHistoryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel {
    return $ComplaintHistoryModelCopyWith<$Res>(_value.complaintHistoryModel,
        (value) {
      return _then(_value.copyWith(complaintHistoryModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ComplaintHistoryStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComplaintHistoryModel complaintHistoryModel});

  @override
  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ComplaintHistoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintHistoryModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == complaintHistoryModel
          ? _value.complaintHistoryModel
          : complaintHistoryModel // ignore: cast_nullable_to_non_nullable
              as ComplaintHistoryModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.complaintHistoryModel);

  @override
  final ComplaintHistoryModel complaintHistoryModel;

  @override
  String toString() {
    return 'ComplaintHistoryState.loading(complaintHistoryModel: $complaintHistoryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.complaintHistoryModel, complaintHistoryModel) ||
                other.complaintHistoryModel == complaintHistoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintHistoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        loading,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        content,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        success,
    required TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)
        failed,
  }) {
    return loading(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult? Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
  }) {
    return loading?.call(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(complaintHistoryModel);
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

abstract class _Loading implements ComplaintHistoryState {
  const factory _Loading(final ComplaintHistoryModel complaintHistoryModel) =
      _$LoadingImpl;

  @override
  ComplaintHistoryModel get complaintHistoryModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ComplaintHistoryStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComplaintHistoryModel complaintHistoryModel});

  @override
  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ComplaintHistoryStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintHistoryModel = null,
  }) {
    return _then(_$ContentImpl(
      null == complaintHistoryModel
          ? _value.complaintHistoryModel
          : complaintHistoryModel // ignore: cast_nullable_to_non_nullable
              as ComplaintHistoryModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.complaintHistoryModel);

  @override
  final ComplaintHistoryModel complaintHistoryModel;

  @override
  String toString() {
    return 'ComplaintHistoryState.content(complaintHistoryModel: $complaintHistoryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.complaintHistoryModel, complaintHistoryModel) ||
                other.complaintHistoryModel == complaintHistoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintHistoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        loading,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        content,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        success,
    required TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)
        failed,
  }) {
    return content(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult? Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
  }) {
    return content?.call(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(complaintHistoryModel);
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

abstract class _Content implements ComplaintHistoryState {
  const factory _Content(final ComplaintHistoryModel complaintHistoryModel) =
      _$ContentImpl;

  @override
  ComplaintHistoryModel get complaintHistoryModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ComplaintHistoryStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComplaintHistoryModel complaintHistoryModel});

  @override
  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ComplaintHistoryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintHistoryModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == complaintHistoryModel
          ? _value.complaintHistoryModel
          : complaintHistoryModel // ignore: cast_nullable_to_non_nullable
              as ComplaintHistoryModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.complaintHistoryModel);

  @override
  final ComplaintHistoryModel complaintHistoryModel;

  @override
  String toString() {
    return 'ComplaintHistoryState.success(complaintHistoryModel: $complaintHistoryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.complaintHistoryModel, complaintHistoryModel) ||
                other.complaintHistoryModel == complaintHistoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintHistoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        loading,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        content,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        success,
    required TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)
        failed,
  }) {
    return success(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult? Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
  }) {
    return success?.call(complaintHistoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(complaintHistoryModel);
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

abstract class _Success implements ComplaintHistoryState {
  const factory _Success(final ComplaintHistoryModel complaintHistoryModel) =
      _$SuccessImpl;

  @override
  ComplaintHistoryModel get complaintHistoryModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ComplaintHistoryStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComplaintHistoryModel complaintHistoryModel, dynamic message});

  @override
  $ComplaintHistoryModelCopyWith<$Res> get complaintHistoryModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ComplaintHistoryStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintHistoryModel = null,
    Object? message = freezed,
  }) {
    return _then(_$FailedImpl(
      null == complaintHistoryModel
          ? _value.complaintHistoryModel
          : complaintHistoryModel // ignore: cast_nullable_to_non_nullable
              as ComplaintHistoryModel,
      freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.complaintHistoryModel, this.message);

  @override
  final ComplaintHistoryModel complaintHistoryModel;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'ComplaintHistoryState.failed(complaintHistoryModel: $complaintHistoryModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.complaintHistoryModel, complaintHistoryModel) ||
                other.complaintHistoryModel == complaintHistoryModel) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintHistoryModel,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        loading,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        content,
    required TResult Function(ComplaintHistoryModel complaintHistoryModel)
        success,
    required TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)
        failed,
  }) {
    return failed(complaintHistoryModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult? Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult? Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
  }) {
    return failed?.call(complaintHistoryModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? loading,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? content,
    TResult Function(ComplaintHistoryModel complaintHistoryModel)? success,
    TResult Function(
            ComplaintHistoryModel complaintHistoryModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(complaintHistoryModel, message);
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

abstract class _Failed implements ComplaintHistoryState {
  const factory _Failed(final ComplaintHistoryModel complaintHistoryModel,
      final dynamic message) = _$FailedImpl;

  @override
  ComplaintHistoryModel get complaintHistoryModel;
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_machine_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationMachineState {
  LocationMachineModel get locationMachineModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMachineModel locationMachineModel)
        loading,
    required TResult Function(LocationMachineModel locationMachineModel)
        content,
    required TResult Function(LocationMachineModel locationMachineModel)
        success,
    required TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMachineModel locationMachineModel)? loading,
    TResult? Function(LocationMachineModel locationMachineModel)? content,
    TResult? Function(LocationMachineModel locationMachineModel)? success,
    TResult? Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMachineModel locationMachineModel)? loading,
    TResult Function(LocationMachineModel locationMachineModel)? content,
    TResult Function(LocationMachineModel locationMachineModel)? success,
    TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)?
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
  $LocationMachineStateCopyWith<LocationMachineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationMachineStateCopyWith<$Res> {
  factory $LocationMachineStateCopyWith(LocationMachineState value,
          $Res Function(LocationMachineState) then) =
      _$LocationMachineStateCopyWithImpl<$Res, LocationMachineState>;
  @useResult
  $Res call({LocationMachineModel locationMachineModel});

  $LocationMachineModelCopyWith<$Res> get locationMachineModel;
}

/// @nodoc
class _$LocationMachineStateCopyWithImpl<$Res,
        $Val extends LocationMachineState>
    implements $LocationMachineStateCopyWith<$Res> {
  _$LocationMachineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMachineModel = null,
  }) {
    return _then(_value.copyWith(
      locationMachineModel: null == locationMachineModel
          ? _value.locationMachineModel
          : locationMachineModel // ignore: cast_nullable_to_non_nullable
              as LocationMachineModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationMachineModelCopyWith<$Res> get locationMachineModel {
    return $LocationMachineModelCopyWith<$Res>(_value.locationMachineModel,
        (value) {
      return _then(_value.copyWith(locationMachineModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $LocationMachineStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationMachineModel locationMachineModel});

  @override
  $LocationMachineModelCopyWith<$Res> get locationMachineModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LocationMachineStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMachineModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == locationMachineModel
          ? _value.locationMachineModel
          : locationMachineModel // ignore: cast_nullable_to_non_nullable
              as LocationMachineModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.locationMachineModel);

  @override
  final LocationMachineModel locationMachineModel;

  @override
  String toString() {
    return 'LocationMachineState.loading(locationMachineModel: $locationMachineModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.locationMachineModel, locationMachineModel) ||
                other.locationMachineModel == locationMachineModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationMachineModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMachineModel locationMachineModel)
        loading,
    required TResult Function(LocationMachineModel locationMachineModel)
        content,
    required TResult Function(LocationMachineModel locationMachineModel)
        success,
    required TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)
        failed,
  }) {
    return loading(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMachineModel locationMachineModel)? loading,
    TResult? Function(LocationMachineModel locationMachineModel)? content,
    TResult? Function(LocationMachineModel locationMachineModel)? success,
    TResult? Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
  }) {
    return loading?.call(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMachineModel locationMachineModel)? loading,
    TResult Function(LocationMachineModel locationMachineModel)? content,
    TResult Function(LocationMachineModel locationMachineModel)? success,
    TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(locationMachineModel);
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

abstract class _Loading implements LocationMachineState {
  const factory _Loading(final LocationMachineModel locationMachineModel) =
      _$LoadingImpl;

  @override
  LocationMachineModel get locationMachineModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $LocationMachineStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationMachineModel locationMachineModel});

  @override
  $LocationMachineModelCopyWith<$Res> get locationMachineModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$LocationMachineStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMachineModel = null,
  }) {
    return _then(_$ContentImpl(
      null == locationMachineModel
          ? _value.locationMachineModel
          : locationMachineModel // ignore: cast_nullable_to_non_nullable
              as LocationMachineModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.locationMachineModel);

  @override
  final LocationMachineModel locationMachineModel;

  @override
  String toString() {
    return 'LocationMachineState.content(locationMachineModel: $locationMachineModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.locationMachineModel, locationMachineModel) ||
                other.locationMachineModel == locationMachineModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationMachineModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMachineModel locationMachineModel)
        loading,
    required TResult Function(LocationMachineModel locationMachineModel)
        content,
    required TResult Function(LocationMachineModel locationMachineModel)
        success,
    required TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)
        failed,
  }) {
    return content(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMachineModel locationMachineModel)? loading,
    TResult? Function(LocationMachineModel locationMachineModel)? content,
    TResult? Function(LocationMachineModel locationMachineModel)? success,
    TResult? Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
  }) {
    return content?.call(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMachineModel locationMachineModel)? loading,
    TResult Function(LocationMachineModel locationMachineModel)? content,
    TResult Function(LocationMachineModel locationMachineModel)? success,
    TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(locationMachineModel);
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

abstract class _Content implements LocationMachineState {
  const factory _Content(final LocationMachineModel locationMachineModel) =
      _$ContentImpl;

  @override
  LocationMachineModel get locationMachineModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $LocationMachineStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationMachineModel locationMachineModel});

  @override
  $LocationMachineModelCopyWith<$Res> get locationMachineModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LocationMachineStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMachineModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == locationMachineModel
          ? _value.locationMachineModel
          : locationMachineModel // ignore: cast_nullable_to_non_nullable
              as LocationMachineModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.locationMachineModel);

  @override
  final LocationMachineModel locationMachineModel;

  @override
  String toString() {
    return 'LocationMachineState.success(locationMachineModel: $locationMachineModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.locationMachineModel, locationMachineModel) ||
                other.locationMachineModel == locationMachineModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationMachineModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMachineModel locationMachineModel)
        loading,
    required TResult Function(LocationMachineModel locationMachineModel)
        content,
    required TResult Function(LocationMachineModel locationMachineModel)
        success,
    required TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)
        failed,
  }) {
    return success(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMachineModel locationMachineModel)? loading,
    TResult? Function(LocationMachineModel locationMachineModel)? content,
    TResult? Function(LocationMachineModel locationMachineModel)? success,
    TResult? Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
  }) {
    return success?.call(locationMachineModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMachineModel locationMachineModel)? loading,
    TResult Function(LocationMachineModel locationMachineModel)? content,
    TResult Function(LocationMachineModel locationMachineModel)? success,
    TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(locationMachineModel);
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

abstract class _Success implements LocationMachineState {
  const factory _Success(final LocationMachineModel locationMachineModel) =
      _$SuccessImpl;

  @override
  LocationMachineModel get locationMachineModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $LocationMachineStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationMachineModel locationMachineModel, dynamic message});

  @override
  $LocationMachineModelCopyWith<$Res> get locationMachineModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$LocationMachineStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMachineModel = null,
    Object? message = freezed,
  }) {
    return _then(_$FailedImpl(
      null == locationMachineModel
          ? _value.locationMachineModel
          : locationMachineModel // ignore: cast_nullable_to_non_nullable
              as LocationMachineModel,
      freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.locationMachineModel, this.message);

  @override
  final LocationMachineModel locationMachineModel;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'LocationMachineState.failed(locationMachineModel: $locationMachineModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.locationMachineModel, locationMachineModel) ||
                other.locationMachineModel == locationMachineModel) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationMachineModel,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMachineModel locationMachineModel)
        loading,
    required TResult Function(LocationMachineModel locationMachineModel)
        content,
    required TResult Function(LocationMachineModel locationMachineModel)
        success,
    required TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)
        failed,
  }) {
    return failed(locationMachineModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMachineModel locationMachineModel)? loading,
    TResult? Function(LocationMachineModel locationMachineModel)? content,
    TResult? Function(LocationMachineModel locationMachineModel)? success,
    TResult? Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
  }) {
    return failed?.call(locationMachineModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMachineModel locationMachineModel)? loading,
    TResult Function(LocationMachineModel locationMachineModel)? content,
    TResult Function(LocationMachineModel locationMachineModel)? success,
    TResult Function(
            LocationMachineModel locationMachineModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(locationMachineModel, message);
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

abstract class _Failed implements LocationMachineState {
  const factory _Failed(final LocationMachineModel locationMachineModel,
      final dynamic message) = _$FailedImpl;

  @override
  LocationMachineModel get locationMachineModel;
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

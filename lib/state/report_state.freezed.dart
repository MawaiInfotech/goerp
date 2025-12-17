// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportState {
  List<ReportModel> get reportList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReportModel> reportList) loading,
    required TResult Function(List<ReportModel> reportList) content,
    required TResult Function(List<ReportModel> reportList) success,
    required TResult Function(List<ReportModel> reportList, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReportModel> reportList)? loading,
    TResult? Function(List<ReportModel> reportList)? content,
    TResult? Function(List<ReportModel> reportList)? success,
    TResult? Function(List<ReportModel> reportList, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReportModel> reportList)? loading,
    TResult Function(List<ReportModel> reportList)? content,
    TResult Function(List<ReportModel> reportList)? success,
    TResult Function(List<ReportModel> reportList, String message)? failed,
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
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call({List<ReportModel> reportList});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportList = null,
  }) {
    return _then(_value.copyWith(
      reportList: null == reportList
          ? _value.reportList
          : reportList // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportModel> reportList});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportList = null,
  }) {
    return _then(_$LoadingImpl(
      null == reportList
          ? _value._reportList
          : reportList // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(final List<ReportModel> reportList)
      : _reportList = reportList;

  final List<ReportModel> _reportList;
  @override
  List<ReportModel> get reportList {
    if (_reportList is EqualUnmodifiableListView) return _reportList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportList);
  }

  @override
  String toString() {
    return 'ReportState.loading(reportList: $reportList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._reportList, _reportList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reportList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReportModel> reportList) loading,
    required TResult Function(List<ReportModel> reportList) content,
    required TResult Function(List<ReportModel> reportList) success,
    required TResult Function(List<ReportModel> reportList, String message)
        failed,
  }) {
    return loading(reportList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReportModel> reportList)? loading,
    TResult? Function(List<ReportModel> reportList)? content,
    TResult? Function(List<ReportModel> reportList)? success,
    TResult? Function(List<ReportModel> reportList, String message)? failed,
  }) {
    return loading?.call(reportList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReportModel> reportList)? loading,
    TResult Function(List<ReportModel> reportList)? content,
    TResult Function(List<ReportModel> reportList)? success,
    TResult Function(List<ReportModel> reportList, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(reportList);
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

abstract class _Loading implements ReportState {
  const factory _Loading(final List<ReportModel> reportList) = _$LoadingImpl;

  @override
  List<ReportModel> get reportList;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportModel> reportList});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportList = null,
  }) {
    return _then(_$ContentImpl(
      null == reportList
          ? _value._reportList
          : reportList // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(final List<ReportModel> reportList)
      : _reportList = reportList;

  final List<ReportModel> _reportList;
  @override
  List<ReportModel> get reportList {
    if (_reportList is EqualUnmodifiableListView) return _reportList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportList);
  }

  @override
  String toString() {
    return 'ReportState.content(reportList: $reportList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality()
                .equals(other._reportList, _reportList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reportList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReportModel> reportList) loading,
    required TResult Function(List<ReportModel> reportList) content,
    required TResult Function(List<ReportModel> reportList) success,
    required TResult Function(List<ReportModel> reportList, String message)
        failed,
  }) {
    return content(reportList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReportModel> reportList)? loading,
    TResult? Function(List<ReportModel> reportList)? content,
    TResult? Function(List<ReportModel> reportList)? success,
    TResult? Function(List<ReportModel> reportList, String message)? failed,
  }) {
    return content?.call(reportList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReportModel> reportList)? loading,
    TResult Function(List<ReportModel> reportList)? content,
    TResult Function(List<ReportModel> reportList)? success,
    TResult Function(List<ReportModel> reportList, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(reportList);
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

abstract class _Content implements ReportState {
  const factory _Content(final List<ReportModel> reportList) = _$ContentImpl;

  @override
  List<ReportModel> get reportList;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportModel> reportList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportList = null,
  }) {
    return _then(_$SuccessImpl(
      null == reportList
          ? _value._reportList
          : reportList // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<ReportModel> reportList)
      : _reportList = reportList;

  final List<ReportModel> _reportList;
  @override
  List<ReportModel> get reportList {
    if (_reportList is EqualUnmodifiableListView) return _reportList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportList);
  }

  @override
  String toString() {
    return 'ReportState.success(reportList: $reportList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._reportList, _reportList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reportList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReportModel> reportList) loading,
    required TResult Function(List<ReportModel> reportList) content,
    required TResult Function(List<ReportModel> reportList) success,
    required TResult Function(List<ReportModel> reportList, String message)
        failed,
  }) {
    return success(reportList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReportModel> reportList)? loading,
    TResult? Function(List<ReportModel> reportList)? content,
    TResult? Function(List<ReportModel> reportList)? success,
    TResult? Function(List<ReportModel> reportList, String message)? failed,
  }) {
    return success?.call(reportList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReportModel> reportList)? loading,
    TResult Function(List<ReportModel> reportList)? content,
    TResult Function(List<ReportModel> reportList)? success,
    TResult Function(List<ReportModel> reportList, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(reportList);
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

abstract class _Success implements ReportState {
  const factory _Success(final List<ReportModel> reportList) = _$SuccessImpl;

  @override
  List<ReportModel> get reportList;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportModel> reportList, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportList = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == reportList
          ? _value._reportList
          : reportList // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(final List<ReportModel> reportList, this.message)
      : _reportList = reportList;

  final List<ReportModel> _reportList;
  @override
  List<ReportModel> get reportList {
    if (_reportList is EqualUnmodifiableListView) return _reportList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportList);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'ReportState.failed(reportList: $reportList, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality()
                .equals(other._reportList, _reportList) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reportList), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReportModel> reportList) loading,
    required TResult Function(List<ReportModel> reportList) content,
    required TResult Function(List<ReportModel> reportList) success,
    required TResult Function(List<ReportModel> reportList, String message)
        failed,
  }) {
    return failed(reportList, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReportModel> reportList)? loading,
    TResult? Function(List<ReportModel> reportList)? content,
    TResult? Function(List<ReportModel> reportList)? success,
    TResult? Function(List<ReportModel> reportList, String message)? failed,
  }) {
    return failed?.call(reportList, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReportModel> reportList)? loading,
    TResult Function(List<ReportModel> reportList)? content,
    TResult Function(List<ReportModel> reportList)? success,
    TResult Function(List<ReportModel> reportList, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reportList, message);
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

abstract class _Failed implements ReportState {
  const factory _Failed(
      final List<ReportModel> reportList, final String message) = _$FailedImpl;

  @override
  List<ReportModel> get reportList;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

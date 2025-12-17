// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryListState {
  List<CategoryListModel> get categoryList =>
      throw _privateConstructorUsedError;
  UnitListModel get unitListModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        loading,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        content,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        success,
    required TResult Function(List<CategoryListModel> categoryList,
            String message, UnitListModel unitListModel)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult? Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
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
  $CategoryListStateCopyWith<CategoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListStateCopyWith<$Res> {
  factory $CategoryListStateCopyWith(
          CategoryListState value, $Res Function(CategoryListState) then) =
      _$CategoryListStateCopyWithImpl<$Res, CategoryListState>;
  @useResult
  $Res call(
      {List<CategoryListModel> categoryList, UnitListModel unitListModel});

  $UnitListModelCopyWith<$Res> get unitListModel;
}

/// @nodoc
class _$CategoryListStateCopyWithImpl<$Res, $Val extends CategoryListState>
    implements $CategoryListStateCopyWith<$Res> {
  _$CategoryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? unitListModel = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryListModel>,
      unitListModel: null == unitListModel
          ? _value.unitListModel
          : unitListModel // ignore: cast_nullable_to_non_nullable
              as UnitListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitListModelCopyWith<$Res> get unitListModel {
    return $UnitListModelCopyWith<$Res>(_value.unitListModel, (value) {
      return _then(_value.copyWith(unitListModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryListModel> categoryList, UnitListModel unitListModel});

  @override
  $UnitListModelCopyWith<$Res> get unitListModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CategoryListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? unitListModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryListModel>,
      null == unitListModel
          ? _value.unitListModel
          : unitListModel // ignore: cast_nullable_to_non_nullable
              as UnitListModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      final List<CategoryListModel> categoryList, this.unitListModel)
      : _categoryList = categoryList;

  final List<CategoryListModel> _categoryList;
  @override
  List<CategoryListModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final UnitListModel unitListModel;

  @override
  String toString() {
    return 'CategoryListState.loading(categoryList: $categoryList, unitListModel: $unitListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.unitListModel, unitListModel) ||
                other.unitListModel == unitListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryList), unitListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        loading,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        content,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        success,
    required TResult Function(List<CategoryListModel> categoryList,
            String message, UnitListModel unitListModel)
        failed,
  }) {
    return loading(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult? Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
  }) {
    return loading?.call(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(categoryList, unitListModel);
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

abstract class _Loading implements CategoryListState {
  const factory _Loading(final List<CategoryListModel> categoryList,
      final UnitListModel unitListModel) = _$LoadingImpl;

  @override
  List<CategoryListModel> get categoryList;
  @override
  UnitListModel get unitListModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryListModel> categoryList, UnitListModel unitListModel});

  @override
  $UnitListModelCopyWith<$Res> get unitListModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$CategoryListStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? unitListModel = null,
  }) {
    return _then(_$ContentImpl(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryListModel>,
      null == unitListModel
          ? _value.unitListModel
          : unitListModel // ignore: cast_nullable_to_non_nullable
              as UnitListModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(
      final List<CategoryListModel> categoryList, this.unitListModel)
      : _categoryList = categoryList;

  final List<CategoryListModel> _categoryList;
  @override
  List<CategoryListModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final UnitListModel unitListModel;

  @override
  String toString() {
    return 'CategoryListState.content(categoryList: $categoryList, unitListModel: $unitListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.unitListModel, unitListModel) ||
                other.unitListModel == unitListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryList), unitListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        loading,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        content,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        success,
    required TResult Function(List<CategoryListModel> categoryList,
            String message, UnitListModel unitListModel)
        failed,
  }) {
    return content(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult? Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
  }) {
    return content?.call(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(categoryList, unitListModel);
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

abstract class _Content implements CategoryListState {
  const factory _Content(final List<CategoryListModel> categoryList,
      final UnitListModel unitListModel) = _$ContentImpl;

  @override
  List<CategoryListModel> get categoryList;
  @override
  UnitListModel get unitListModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryListModel> categoryList, UnitListModel unitListModel});

  @override
  $UnitListModelCopyWith<$Res> get unitListModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CategoryListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? unitListModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryListModel>,
      null == unitListModel
          ? _value.unitListModel
          : unitListModel // ignore: cast_nullable_to_non_nullable
              as UnitListModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      final List<CategoryListModel> categoryList, this.unitListModel)
      : _categoryList = categoryList;

  final List<CategoryListModel> _categoryList;
  @override
  List<CategoryListModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final UnitListModel unitListModel;

  @override
  String toString() {
    return 'CategoryListState.success(categoryList: $categoryList, unitListModel: $unitListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.unitListModel, unitListModel) ||
                other.unitListModel == unitListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryList), unitListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        loading,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        content,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        success,
    required TResult Function(List<CategoryListModel> categoryList,
            String message, UnitListModel unitListModel)
        failed,
  }) {
    return success(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult? Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
  }) {
    return success?.call(categoryList, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categoryList, unitListModel);
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

abstract class _Success implements CategoryListState {
  const factory _Success(final List<CategoryListModel> categoryList,
      final UnitListModel unitListModel) = _$SuccessImpl;

  @override
  List<CategoryListModel> get categoryList;
  @override
  UnitListModel get unitListModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryListModel> categoryList,
      String message,
      UnitListModel unitListModel});

  @override
  $UnitListModelCopyWith<$Res> get unitListModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CategoryListStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? message = null,
    Object? unitListModel = null,
  }) {
    return _then(_$FailedImpl(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryListModel>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == unitListModel
          ? _value.unitListModel
          : unitListModel // ignore: cast_nullable_to_non_nullable
              as UnitListModel,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(final List<CategoryListModel> categoryList, this.message,
      this.unitListModel)
      : _categoryList = categoryList;

  final List<CategoryListModel> _categoryList;
  @override
  List<CategoryListModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final String message;
  @override
  final UnitListModel unitListModel;

  @override
  String toString() {
    return 'CategoryListState.failed(categoryList: $categoryList, message: $message, unitListModel: $unitListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.unitListModel, unitListModel) ||
                other.unitListModel == unitListModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      message,
      unitListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        loading,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        content,
    required TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)
        success,
    required TResult Function(List<CategoryListModel> categoryList,
            String message, UnitListModel unitListModel)
        failed,
  }) {
    return failed(categoryList, message, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult? Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult? Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
  }) {
    return failed?.call(categoryList, message, unitListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        loading,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        content,
    TResult Function(
            List<CategoryListModel> categoryList, UnitListModel unitListModel)?
        success,
    TResult Function(List<CategoryListModel> categoryList, String message,
            UnitListModel unitListModel)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(categoryList, message, unitListModel);
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

abstract class _Failed implements CategoryListState {
  const factory _Failed(final List<CategoryListModel> categoryList,
      final String message, final UnitListModel unitListModel) = _$FailedImpl;

  @override
  List<CategoryListModel> get categoryList;
  String get message;
  @override
  UnitListModel get unitListModel;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

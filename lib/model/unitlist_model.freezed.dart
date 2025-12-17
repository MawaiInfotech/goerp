// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unitlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitListModel _$UnitListModelFromJson(Map<String, dynamic> json) {
  return _UnitListModel.fromJson(json);
}

/// @nodoc
mixin _$UnitListModel {
  @JsonKey(name: 'user_line_id')
  String get userLineId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get unitcode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get comp_code => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitListModelCopyWith<UnitListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitListModelCopyWith<$Res> {
  factory $UnitListModelCopyWith(
          UnitListModel value, $Res Function(UnitListModel) then) =
      _$UnitListModelCopyWithImpl<$Res, UnitListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_line_id') String userLineId,
      String userId,
      String unitcode,
      String name,
      int comp_code,
      Map<String, String?> errors});
}

/// @nodoc
class _$UnitListModelCopyWithImpl<$Res, $Val extends UnitListModel>
    implements $UnitListModelCopyWith<$Res> {
  _$UnitListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLineId = null,
    Object? userId = null,
    Object? unitcode = null,
    Object? name = null,
    Object? comp_code = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      userLineId: null == userLineId
          ? _value.userLineId
          : userLineId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      unitcode: null == unitcode
          ? _value.unitcode
          : unitcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comp_code: null == comp_code
          ? _value.comp_code
          : comp_code // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitListModelImplCopyWith<$Res>
    implements $UnitListModelCopyWith<$Res> {
  factory _$$UnitListModelImplCopyWith(
          _$UnitListModelImpl value, $Res Function(_$UnitListModelImpl) then) =
      __$$UnitListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_line_id') String userLineId,
      String userId,
      String unitcode,
      String name,
      int comp_code,
      Map<String, String?> errors});
}

/// @nodoc
class __$$UnitListModelImplCopyWithImpl<$Res>
    extends _$UnitListModelCopyWithImpl<$Res, _$UnitListModelImpl>
    implements _$$UnitListModelImplCopyWith<$Res> {
  __$$UnitListModelImplCopyWithImpl(
      _$UnitListModelImpl _value, $Res Function(_$UnitListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLineId = null,
    Object? userId = null,
    Object? unitcode = null,
    Object? name = null,
    Object? comp_code = null,
    Object? errors = null,
  }) {
    return _then(_$UnitListModelImpl(
      userLineId: null == userLineId
          ? _value.userLineId
          : userLineId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      unitcode: null == unitcode
          ? _value.unitcode
          : unitcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comp_code: null == comp_code
          ? _value.comp_code
          : comp_code // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitListModelImpl implements _UnitListModel {
  const _$UnitListModelImpl(
      {@JsonKey(name: 'user_line_id') this.userLineId = '',
      this.userId = '',
      this.unitcode = '',
      this.name = '',
      this.comp_code = 0,
      final Map<String, String?> errors = const {}})
      : _errors = errors;

  factory _$UnitListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitListModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_line_id')
  final String userLineId;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String unitcode;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int comp_code;
  final Map<String, String?> _errors;
  @override
  @JsonKey()
  Map<String, String?> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'UnitListModel(userLineId: $userLineId, userId: $userId, unitcode: $unitcode, name: $name, comp_code: $comp_code, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitListModelImpl &&
            (identical(other.userLineId, userLineId) ||
                other.userLineId == userLineId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.unitcode, unitcode) ||
                other.unitcode == unitcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comp_code, comp_code) ||
                other.comp_code == comp_code) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userLineId, userId, unitcode,
      name, comp_code, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitListModelImplCopyWith<_$UnitListModelImpl> get copyWith =>
      __$$UnitListModelImplCopyWithImpl<_$UnitListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitListModelImplToJson(
      this,
    );
  }
}

abstract class _UnitListModel implements UnitListModel {
  const factory _UnitListModel(
      {@JsonKey(name: 'user_line_id') final String userLineId,
      final String userId,
      final String unitcode,
      final String name,
      final int comp_code,
      final Map<String, String?> errors}) = _$UnitListModelImpl;

  factory _UnitListModel.fromJson(Map<String, dynamic> json) =
      _$UnitListModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_line_id')
  String get userLineId;
  @override
  String get userId;
  @override
  String get unitcode;
  @override
  String get name;
  @override
  int get comp_code;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$UnitListModelImplCopyWith<_$UnitListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

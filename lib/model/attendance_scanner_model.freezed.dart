// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_scanner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceScannerModel _$AttendanceScannerModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceScannerModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceScannerModel {
  String get empcode => throw _privateConstructorUsedError;
  String get unit_cd => throw _privateConstructorUsedError;
  String get created_by => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceScannerModelCopyWith<AttendanceScannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceScannerModelCopyWith<$Res> {
  factory $AttendanceScannerModelCopyWith(AttendanceScannerModel value,
          $Res Function(AttendanceScannerModel) then) =
      _$AttendanceScannerModelCopyWithImpl<$Res, AttendanceScannerModel>;
  @useResult
  $Res call(
      {String empcode,
      String unit_cd,
      String created_by,
      String updated_at,
      String created_at,
      int id});
}

/// @nodoc
class _$AttendanceScannerModelCopyWithImpl<$Res,
        $Val extends AttendanceScannerModel>
    implements $AttendanceScannerModelCopyWith<$Res> {
  _$AttendanceScannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empcode = null,
    Object? unit_cd = null,
    Object? created_by = null,
    Object? updated_at = null,
    Object? created_at = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      empcode: null == empcode
          ? _value.empcode
          : empcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit_cd: null == unit_cd
          ? _value.unit_cd
          : unit_cd // ignore: cast_nullable_to_non_nullable
              as String,
      created_by: null == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceScannerModelImplCopyWith<$Res>
    implements $AttendanceScannerModelCopyWith<$Res> {
  factory _$$AttendanceScannerModelImplCopyWith(
          _$AttendanceScannerModelImpl value,
          $Res Function(_$AttendanceScannerModelImpl) then) =
      __$$AttendanceScannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String empcode,
      String unit_cd,
      String created_by,
      String updated_at,
      String created_at,
      int id});
}

/// @nodoc
class __$$AttendanceScannerModelImplCopyWithImpl<$Res>
    extends _$AttendanceScannerModelCopyWithImpl<$Res,
        _$AttendanceScannerModelImpl>
    implements _$$AttendanceScannerModelImplCopyWith<$Res> {
  __$$AttendanceScannerModelImplCopyWithImpl(
      _$AttendanceScannerModelImpl _value,
      $Res Function(_$AttendanceScannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empcode = null,
    Object? unit_cd = null,
    Object? created_by = null,
    Object? updated_at = null,
    Object? created_at = null,
    Object? id = null,
  }) {
    return _then(_$AttendanceScannerModelImpl(
      empcode: null == empcode
          ? _value.empcode
          : empcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit_cd: null == unit_cd
          ? _value.unit_cd
          : unit_cd // ignore: cast_nullable_to_non_nullable
              as String,
      created_by: null == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceScannerModelImpl implements _AttendanceScannerModel {
  const _$AttendanceScannerModelImpl(
      {this.empcode = '',
      this.unit_cd = '',
      this.created_by = '',
      this.updated_at = '',
      this.created_at = '',
      this.id = 0});

  factory _$AttendanceScannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceScannerModelImplFromJson(json);

  @override
  @JsonKey()
  final String empcode;
  @override
  @JsonKey()
  final String unit_cd;
  @override
  @JsonKey()
  final String created_by;
  @override
  @JsonKey()
  final String updated_at;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'AttendanceScannerModel(empcode: $empcode, unit_cd: $unit_cd, created_by: $created_by, updated_at: $updated_at, created_at: $created_at, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceScannerModelImpl &&
            (identical(other.empcode, empcode) || other.empcode == empcode) &&
            (identical(other.unit_cd, unit_cd) || other.unit_cd == unit_cd) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, empcode, unit_cd, created_by, updated_at, created_at, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceScannerModelImplCopyWith<_$AttendanceScannerModelImpl>
      get copyWith => __$$AttendanceScannerModelImplCopyWithImpl<
          _$AttendanceScannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceScannerModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceScannerModel implements AttendanceScannerModel {
  const factory _AttendanceScannerModel(
      {final String empcode,
      final String unit_cd,
      final String created_by,
      final String updated_at,
      final String created_at,
      final int id}) = _$AttendanceScannerModelImpl;

  factory _AttendanceScannerModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceScannerModelImpl.fromJson;

  @override
  String get empcode;
  @override
  String get unit_cd;
  @override
  String get created_by;
  @override
  String get updated_at;
  @override
  String get created_at;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceScannerModelImplCopyWith<_$AttendanceScannerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

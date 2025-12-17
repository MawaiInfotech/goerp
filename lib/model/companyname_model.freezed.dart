// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companyname_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyName _$CompanyNameFromJson(Map<String, dynamic> json) {
  return _CompanyName.fromJson(json);
}

/// @nodoc
mixin _$CompanyName {
  @JsonKey(name: 'comp_code')
  int get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'comp_name')
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_compnay')
  String get companyImage => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyNameCopyWith<CompanyName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNameCopyWith<$Res> {
  factory $CompanyNameCopyWith(
          CompanyName value, $Res Function(CompanyName) then) =
      _$CompanyNameCopyWithImpl<$Res, CompanyName>;
  @useResult
  $Res call(
      {@JsonKey(name: 'comp_code') int companyCode,
      @JsonKey(name: 'comp_name') String companyName,
      @JsonKey(name: 'image_compnay') String companyImage,
      Map<String, String?> errors});
}

/// @nodoc
class _$CompanyNameCopyWithImpl<$Res, $Val extends CompanyName>
    implements $CompanyNameCopyWith<$Res> {
  _$CompanyNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyCode = null,
    Object? companyName = null,
    Object? companyImage = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyImage: null == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyNameImplCopyWith<$Res>
    implements $CompanyNameCopyWith<$Res> {
  factory _$$CompanyNameImplCopyWith(
          _$CompanyNameImpl value, $Res Function(_$CompanyNameImpl) then) =
      __$$CompanyNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'comp_code') int companyCode,
      @JsonKey(name: 'comp_name') String companyName,
      @JsonKey(name: 'image_compnay') String companyImage,
      Map<String, String?> errors});
}

/// @nodoc
class __$$CompanyNameImplCopyWithImpl<$Res>
    extends _$CompanyNameCopyWithImpl<$Res, _$CompanyNameImpl>
    implements _$$CompanyNameImplCopyWith<$Res> {
  __$$CompanyNameImplCopyWithImpl(
      _$CompanyNameImpl _value, $Res Function(_$CompanyNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyCode = null,
    Object? companyName = null,
    Object? companyImage = null,
    Object? errors = null,
  }) {
    return _then(_$CompanyNameImpl(
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyImage: null == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyNameImpl implements _CompanyName {
  const _$CompanyNameImpl(
      {@JsonKey(name: 'comp_code') this.companyCode = 0,
      @JsonKey(name: 'comp_name') this.companyName = '',
      @JsonKey(name: 'image_compnay') this.companyImage = '',
      final Map<String, String?> errors = const {}})
      : _errors = errors;

  factory _$CompanyNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyNameImplFromJson(json);

  @override
  @JsonKey(name: 'comp_code')
  final int companyCode;
  @override
  @JsonKey(name: 'comp_name')
  final String companyName;
  @override
  @JsonKey(name: 'image_compnay')
  final String companyImage;
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
    return 'CompanyName(companyCode: $companyCode, companyName: $companyName, companyImage: $companyImage, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyNameImpl &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyImage, companyImage) ||
                other.companyImage == companyImage) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyCode, companyName,
      companyImage, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyNameImplCopyWith<_$CompanyNameImpl> get copyWith =>
      __$$CompanyNameImplCopyWithImpl<_$CompanyNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyNameImplToJson(
      this,
    );
  }
}

abstract class _CompanyName implements CompanyName {
  const factory _CompanyName(
      {@JsonKey(name: 'comp_code') final int companyCode,
      @JsonKey(name: 'comp_name') final String companyName,
      @JsonKey(name: 'image_compnay') final String companyImage,
      final Map<String, String?> errors}) = _$CompanyNameImpl;

  factory _CompanyName.fromJson(Map<String, dynamic> json) =
      _$CompanyNameImpl.fromJson;

  @override
  @JsonKey(name: 'comp_code')
  int get companyCode;
  @override
  @JsonKey(name: 'comp_name')
  String get companyName;
  @override
  @JsonKey(name: 'image_compnay')
  String get companyImage;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$CompanyNameImplCopyWith<_$CompanyNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

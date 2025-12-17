// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rectified_by_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RectifiedByModel _$RectifiedByModelFromJson(Map<String, dynamic> json) {
  return _RectifiedByModel.fromJson(json);
}

/// @nodoc
mixin _$RectifiedByModel {
  @JsonKey(name: "eno")
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: "ename")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RectifiedByModelCopyWith<RectifiedByModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectifiedByModelCopyWith<$Res> {
  factory $RectifiedByModelCopyWith(
          RectifiedByModel value, $Res Function(RectifiedByModel) then) =
      _$RectifiedByModelCopyWithImpl<$Res, RectifiedByModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "eno") String number,
      @JsonKey(name: "ename") String name});
}

/// @nodoc
class _$RectifiedByModelCopyWithImpl<$Res, $Val extends RectifiedByModel>
    implements $RectifiedByModelCopyWith<$Res> {
  _$RectifiedByModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RectifiedByModelImplCopyWith<$Res>
    implements $RectifiedByModelCopyWith<$Res> {
  factory _$$RectifiedByModelImplCopyWith(_$RectifiedByModelImpl value,
          $Res Function(_$RectifiedByModelImpl) then) =
      __$$RectifiedByModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "eno") String number,
      @JsonKey(name: "ename") String name});
}

/// @nodoc
class __$$RectifiedByModelImplCopyWithImpl<$Res>
    extends _$RectifiedByModelCopyWithImpl<$Res, _$RectifiedByModelImpl>
    implements _$$RectifiedByModelImplCopyWith<$Res> {
  __$$RectifiedByModelImplCopyWithImpl(_$RectifiedByModelImpl _value,
      $Res Function(_$RectifiedByModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
  }) {
    return _then(_$RectifiedByModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectifiedByModelImpl implements _RectifiedByModel {
  const _$RectifiedByModelImpl(
      {@JsonKey(name: "eno") this.number = "",
      @JsonKey(name: "ename") this.name = ""});

  factory _$RectifiedByModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectifiedByModelImplFromJson(json);

  @override
  @JsonKey(name: "eno")
  final String number;
  @override
  @JsonKey(name: "ename")
  final String name;

  @override
  String toString() {
    return 'RectifiedByModel(number: $number, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectifiedByModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RectifiedByModelImplCopyWith<_$RectifiedByModelImpl> get copyWith =>
      __$$RectifiedByModelImplCopyWithImpl<_$RectifiedByModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectifiedByModelImplToJson(
      this,
    );
  }
}

abstract class _RectifiedByModel implements RectifiedByModel {
  const factory _RectifiedByModel(
      {@JsonKey(name: "eno") final String number,
      @JsonKey(name: "ename") final String name}) = _$RectifiedByModelImpl;

  factory _RectifiedByModel.fromJson(Map<String, dynamic> json) =
      _$RectifiedByModelImpl.fromJson;

  @override
  @JsonKey(name: "eno")
  String get number;
  @override
  @JsonKey(name: "ename")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RectifiedByModelImplCopyWith<_$RectifiedByModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

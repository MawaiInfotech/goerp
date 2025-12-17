// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rectification_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RectificationTypeModel _$RectificationTypeModelFromJson(
    Map<String, dynamic> json) {
  return _RectificationTypeModel.fromJson(json);
}

/// @nodoc
mixin _$RectificationTypeModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "meaning")
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RectificationTypeModelCopyWith<RectificationTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectificationTypeModelCopyWith<$Res> {
  factory $RectificationTypeModelCopyWith(RectificationTypeModel value,
          $Res Function(RectificationTypeModel) then) =
      _$RectificationTypeModelCopyWithImpl<$Res, RectificationTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class _$RectificationTypeModelCopyWithImpl<$Res,
        $Val extends RectificationTypeModel>
    implements $RectificationTypeModelCopyWith<$Res> {
  _$RectificationTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_value.copyWith(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RectificationTypeModelImplCopyWith<$Res>
    implements $RectificationTypeModelCopyWith<$Res> {
  factory _$$RectificationTypeModelImplCopyWith(
          _$RectificationTypeModelImpl value,
          $Res Function(_$RectificationTypeModelImpl) then) =
      __$$RectificationTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class __$$RectificationTypeModelImplCopyWithImpl<$Res>
    extends _$RectificationTypeModelCopyWithImpl<$Res,
        _$RectificationTypeModelImpl>
    implements _$$RectificationTypeModelImplCopyWith<$Res> {
  __$$RectificationTypeModelImplCopyWithImpl(
      _$RectificationTypeModelImpl _value,
      $Res Function(_$RectificationTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_$RectificationTypeModelImpl(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectificationTypeModelImpl implements _RectificationTypeModel {
  const _$RectificationTypeModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "meaning") this.meaning = ""});

  factory _$RectificationTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectificationTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "meaning")
  final String meaning;

  @override
  String toString() {
    return 'RectificationTypeModel(controlCode: $controlCode, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectificationTypeModelImpl &&
            (identical(other.controlCode, controlCode) ||
                other.controlCode == controlCode) &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, controlCode, meaning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RectificationTypeModelImplCopyWith<_$RectificationTypeModelImpl>
      get copyWith => __$$RectificationTypeModelImplCopyWithImpl<
          _$RectificationTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectificationTypeModelImplToJson(
      this,
    );
  }
}

abstract class _RectificationTypeModel implements RectificationTypeModel {
  const factory _RectificationTypeModel(
          {@JsonKey(name: "control_code") final String controlCode,
          @JsonKey(name: "meaning") final String meaning}) =
      _$RectificationTypeModelImpl;

  factory _RectificationTypeModel.fromJson(Map<String, dynamic> json) =
      _$RectificationTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "meaning")
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$RectificationTypeModelImplCopyWith<_$RectificationTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

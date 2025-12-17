// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breakdown_reason_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreakdownReasonModel _$BreakdownReasonModelFromJson(Map<String, dynamic> json) {
  return _BreakdownReasonModel.fromJson(json);
}

/// @nodoc
mixin _$BreakdownReasonModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreakdownReasonModelCopyWith<BreakdownReasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakdownReasonModelCopyWith<$Res> {
  factory $BreakdownReasonModelCopyWith(BreakdownReasonModel value,
          $Res Function(BreakdownReasonModel) then) =
      _$BreakdownReasonModelCopyWithImpl<$Res, BreakdownReasonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$BreakdownReasonModelCopyWithImpl<$Res,
        $Val extends BreakdownReasonModel>
    implements $BreakdownReasonModelCopyWith<$Res> {
  _$BreakdownReasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreakdownReasonModelImplCopyWith<$Res>
    implements $BreakdownReasonModelCopyWith<$Res> {
  factory _$$BreakdownReasonModelImplCopyWith(_$BreakdownReasonModelImpl value,
          $Res Function(_$BreakdownReasonModelImpl) then) =
      __$$BreakdownReasonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$BreakdownReasonModelImplCopyWithImpl<$Res>
    extends _$BreakdownReasonModelCopyWithImpl<$Res, _$BreakdownReasonModelImpl>
    implements _$$BreakdownReasonModelImplCopyWith<$Res> {
  __$$BreakdownReasonModelImplCopyWithImpl(_$BreakdownReasonModelImpl _value,
      $Res Function(_$BreakdownReasonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? description = null,
  }) {
    return _then(_$BreakdownReasonModelImpl(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreakdownReasonModelImpl implements _BreakdownReasonModel {
  const _$BreakdownReasonModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "description") this.description = ""});

  factory _$BreakdownReasonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreakdownReasonModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'BreakdownReasonModel(controlCode: $controlCode, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakdownReasonModelImpl &&
            (identical(other.controlCode, controlCode) ||
                other.controlCode == controlCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, controlCode, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakdownReasonModelImplCopyWith<_$BreakdownReasonModelImpl>
      get copyWith =>
          __$$BreakdownReasonModelImplCopyWithImpl<_$BreakdownReasonModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreakdownReasonModelImplToJson(
      this,
    );
  }
}

abstract class _BreakdownReasonModel implements BreakdownReasonModel {
  const factory _BreakdownReasonModel(
          {@JsonKey(name: "control_code") final String controlCode,
          @JsonKey(name: "description") final String description}) =
      _$BreakdownReasonModelImpl;

  factory _BreakdownReasonModel.fromJson(Map<String, dynamic> json) =
      _$BreakdownReasonModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BreakdownReasonModelImplCopyWith<_$BreakdownReasonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

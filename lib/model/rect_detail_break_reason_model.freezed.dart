// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rect_detail_break_reason_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RectDetailBreakReasonModel _$RectDetailBreakReasonModelFromJson(
    Map<String, dynamic> json) {
  return _RectDetailBreakReasonModel.fromJson(json);
}

/// @nodoc
mixin _$RectDetailBreakReasonModel {
  @JsonKey(name: "breakdown_type")
  String get breakdown_type => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_code")
  String get reason_code => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "breakdown_type_name")
  String get breakdown_type_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RectDetailBreakReasonModelCopyWith<RectDetailBreakReasonModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectDetailBreakReasonModelCopyWith<$Res> {
  factory $RectDetailBreakReasonModelCopyWith(RectDetailBreakReasonModel value,
          $Res Function(RectDetailBreakReasonModel) then) =
      _$RectDetailBreakReasonModelCopyWithImpl<$Res,
          RectDetailBreakReasonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "breakdown_type") String breakdown_type,
      @JsonKey(name: "reason_code") String reason_code,
      @JsonKey(name: "remarks") String remarks,
      @JsonKey(name: "breakdown_type_name") String breakdown_type_name});
}

/// @nodoc
class _$RectDetailBreakReasonModelCopyWithImpl<$Res,
        $Val extends RectDetailBreakReasonModel>
    implements $RectDetailBreakReasonModelCopyWith<$Res> {
  _$RectDetailBreakReasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakdown_type = null,
    Object? reason_code = null,
    Object? remarks = null,
    Object? breakdown_type_name = null,
  }) {
    return _then(_value.copyWith(
      breakdown_type: null == breakdown_type
          ? _value.breakdown_type
          : breakdown_type // ignore: cast_nullable_to_non_nullable
              as String,
      reason_code: null == reason_code
          ? _value.reason_code
          : reason_code // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      breakdown_type_name: null == breakdown_type_name
          ? _value.breakdown_type_name
          : breakdown_type_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RectDetailBreakReasonModelImplCopyWith<$Res>
    implements $RectDetailBreakReasonModelCopyWith<$Res> {
  factory _$$RectDetailBreakReasonModelImplCopyWith(
          _$RectDetailBreakReasonModelImpl value,
          $Res Function(_$RectDetailBreakReasonModelImpl) then) =
      __$$RectDetailBreakReasonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "breakdown_type") String breakdown_type,
      @JsonKey(name: "reason_code") String reason_code,
      @JsonKey(name: "remarks") String remarks,
      @JsonKey(name: "breakdown_type_name") String breakdown_type_name});
}

/// @nodoc
class __$$RectDetailBreakReasonModelImplCopyWithImpl<$Res>
    extends _$RectDetailBreakReasonModelCopyWithImpl<$Res,
        _$RectDetailBreakReasonModelImpl>
    implements _$$RectDetailBreakReasonModelImplCopyWith<$Res> {
  __$$RectDetailBreakReasonModelImplCopyWithImpl(
      _$RectDetailBreakReasonModelImpl _value,
      $Res Function(_$RectDetailBreakReasonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakdown_type = null,
    Object? reason_code = null,
    Object? remarks = null,
    Object? breakdown_type_name = null,
  }) {
    return _then(_$RectDetailBreakReasonModelImpl(
      breakdown_type: null == breakdown_type
          ? _value.breakdown_type
          : breakdown_type // ignore: cast_nullable_to_non_nullable
              as String,
      reason_code: null == reason_code
          ? _value.reason_code
          : reason_code // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      breakdown_type_name: null == breakdown_type_name
          ? _value.breakdown_type_name
          : breakdown_type_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectDetailBreakReasonModelImpl implements _RectDetailBreakReasonModel {
  const _$RectDetailBreakReasonModelImpl(
      {@JsonKey(name: "breakdown_type") this.breakdown_type = "",
      @JsonKey(name: "reason_code") this.reason_code = "",
      @JsonKey(name: "remarks") this.remarks = "",
      @JsonKey(name: "breakdown_type_name") this.breakdown_type_name = ""});

  factory _$RectDetailBreakReasonModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RectDetailBreakReasonModelImplFromJson(json);

  @override
  @JsonKey(name: "breakdown_type")
  final String breakdown_type;
  @override
  @JsonKey(name: "reason_code")
  final String reason_code;
  @override
  @JsonKey(name: "remarks")
  final String remarks;
  @override
  @JsonKey(name: "breakdown_type_name")
  final String breakdown_type_name;

  @override
  String toString() {
    return 'RectDetailBreakReasonModel(breakdown_type: $breakdown_type, reason_code: $reason_code, remarks: $remarks, breakdown_type_name: $breakdown_type_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectDetailBreakReasonModelImpl &&
            (identical(other.breakdown_type, breakdown_type) ||
                other.breakdown_type == breakdown_type) &&
            (identical(other.reason_code, reason_code) ||
                other.reason_code == reason_code) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.breakdown_type_name, breakdown_type_name) ||
                other.breakdown_type_name == breakdown_type_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, breakdown_type, reason_code, remarks, breakdown_type_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RectDetailBreakReasonModelImplCopyWith<_$RectDetailBreakReasonModelImpl>
      get copyWith => __$$RectDetailBreakReasonModelImplCopyWithImpl<
          _$RectDetailBreakReasonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectDetailBreakReasonModelImplToJson(
      this,
    );
  }
}

abstract class _RectDetailBreakReasonModel
    implements RectDetailBreakReasonModel {
  const factory _RectDetailBreakReasonModel(
      {@JsonKey(name: "breakdown_type") final String breakdown_type,
      @JsonKey(name: "reason_code") final String reason_code,
      @JsonKey(name: "remarks") final String remarks,
      @JsonKey(name: "breakdown_type_name")
      final String breakdown_type_name}) = _$RectDetailBreakReasonModelImpl;

  factory _RectDetailBreakReasonModel.fromJson(Map<String, dynamic> json) =
      _$RectDetailBreakReasonModelImpl.fromJson;

  @override
  @JsonKey(name: "breakdown_type")
  String get breakdown_type;
  @override
  @JsonKey(name: "reason_code")
  String get reason_code;
  @override
  @JsonKey(name: "remarks")
  String get remarks;
  @override
  @JsonKey(name: "breakdown_type_name")
  String get breakdown_type_name;
  @override
  @JsonKey(ignore: true)
  _$$RectDetailBreakReasonModelImplCopyWith<_$RectDetailBreakReasonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

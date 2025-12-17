// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rect_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RectDetailsModel _$RectDetailsModelFromJson(Map<String, dynamic> json) {
  return _RectDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RectDetailsModel {
  @JsonKey(name: "rectification")
  RectDetailMainDataModel? get rectification =>
      throw _privateConstructorUsedError;
  List<RectDetailBreakReasonModel> get breakdown_reason =>
      throw _privateConstructorUsedError;
  List<RectDetailSparePartModel> get spare_parts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RectDetailsModelCopyWith<RectDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectDetailsModelCopyWith<$Res> {
  factory $RectDetailsModelCopyWith(
          RectDetailsModel value, $Res Function(RectDetailsModel) then) =
      _$RectDetailsModelCopyWithImpl<$Res, RectDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "rectification") RectDetailMainDataModel? rectification,
      List<RectDetailBreakReasonModel> breakdown_reason,
      List<RectDetailSparePartModel> spare_parts});

  $RectDetailMainDataModelCopyWith<$Res>? get rectification;
}

/// @nodoc
class _$RectDetailsModelCopyWithImpl<$Res, $Val extends RectDetailsModel>
    implements $RectDetailsModelCopyWith<$Res> {
  _$RectDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectification = freezed,
    Object? breakdown_reason = null,
    Object? spare_parts = null,
  }) {
    return _then(_value.copyWith(
      rectification: freezed == rectification
          ? _value.rectification
          : rectification // ignore: cast_nullable_to_non_nullable
              as RectDetailMainDataModel?,
      breakdown_reason: null == breakdown_reason
          ? _value.breakdown_reason
          : breakdown_reason // ignore: cast_nullable_to_non_nullable
              as List<RectDetailBreakReasonModel>,
      spare_parts: null == spare_parts
          ? _value.spare_parts
          : spare_parts // ignore: cast_nullable_to_non_nullable
              as List<RectDetailSparePartModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RectDetailMainDataModelCopyWith<$Res>? get rectification {
    if (_value.rectification == null) {
      return null;
    }

    return $RectDetailMainDataModelCopyWith<$Res>(_value.rectification!,
        (value) {
      return _then(_value.copyWith(rectification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RectDetailsModelImplCopyWith<$Res>
    implements $RectDetailsModelCopyWith<$Res> {
  factory _$$RectDetailsModelImplCopyWith(_$RectDetailsModelImpl value,
          $Res Function(_$RectDetailsModelImpl) then) =
      __$$RectDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rectification") RectDetailMainDataModel? rectification,
      List<RectDetailBreakReasonModel> breakdown_reason,
      List<RectDetailSparePartModel> spare_parts});

  @override
  $RectDetailMainDataModelCopyWith<$Res>? get rectification;
}

/// @nodoc
class __$$RectDetailsModelImplCopyWithImpl<$Res>
    extends _$RectDetailsModelCopyWithImpl<$Res, _$RectDetailsModelImpl>
    implements _$$RectDetailsModelImplCopyWith<$Res> {
  __$$RectDetailsModelImplCopyWithImpl(_$RectDetailsModelImpl _value,
      $Res Function(_$RectDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectification = freezed,
    Object? breakdown_reason = null,
    Object? spare_parts = null,
  }) {
    return _then(_$RectDetailsModelImpl(
      rectification: freezed == rectification
          ? _value.rectification
          : rectification // ignore: cast_nullable_to_non_nullable
              as RectDetailMainDataModel?,
      breakdown_reason: null == breakdown_reason
          ? _value._breakdown_reason
          : breakdown_reason // ignore: cast_nullable_to_non_nullable
              as List<RectDetailBreakReasonModel>,
      spare_parts: null == spare_parts
          ? _value._spare_parts
          : spare_parts // ignore: cast_nullable_to_non_nullable
              as List<RectDetailSparePartModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectDetailsModelImpl implements _RectDetailsModel {
  const _$RectDetailsModelImpl(
      {@JsonKey(name: "rectification") this.rectification,
      final List<RectDetailBreakReasonModel> breakdown_reason =
          const <RectDetailBreakReasonModel>[],
      final List<RectDetailSparePartModel> spare_parts =
          const <RectDetailSparePartModel>[]})
      : _breakdown_reason = breakdown_reason,
        _spare_parts = spare_parts;

  factory _$RectDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "rectification")
  final RectDetailMainDataModel? rectification;
  final List<RectDetailBreakReasonModel> _breakdown_reason;
  @override
  @JsonKey()
  List<RectDetailBreakReasonModel> get breakdown_reason {
    if (_breakdown_reason is EqualUnmodifiableListView)
      return _breakdown_reason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakdown_reason);
  }

  final List<RectDetailSparePartModel> _spare_parts;
  @override
  @JsonKey()
  List<RectDetailSparePartModel> get spare_parts {
    if (_spare_parts is EqualUnmodifiableListView) return _spare_parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spare_parts);
  }

  @override
  String toString() {
    return 'RectDetailsModel(rectification: $rectification, breakdown_reason: $breakdown_reason, spare_parts: $spare_parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectDetailsModelImpl &&
            (identical(other.rectification, rectification) ||
                other.rectification == rectification) &&
            const DeepCollectionEquality()
                .equals(other._breakdown_reason, _breakdown_reason) &&
            const DeepCollectionEquality()
                .equals(other._spare_parts, _spare_parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rectification,
      const DeepCollectionEquality().hash(_breakdown_reason),
      const DeepCollectionEquality().hash(_spare_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RectDetailsModelImplCopyWith<_$RectDetailsModelImpl> get copyWith =>
      __$$RectDetailsModelImplCopyWithImpl<_$RectDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RectDetailsModel implements RectDetailsModel {
  const factory _RectDetailsModel(
          {@JsonKey(name: "rectification")
          final RectDetailMainDataModel? rectification,
          final List<RectDetailBreakReasonModel> breakdown_reason,
          final List<RectDetailSparePartModel> spare_parts}) =
      _$RectDetailsModelImpl;

  factory _RectDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RectDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "rectification")
  RectDetailMainDataModel? get rectification;
  @override
  List<RectDetailBreakReasonModel> get breakdown_reason;
  @override
  List<RectDetailSparePartModel> get spare_parts;
  @override
  @JsonKey(ignore: true)
  _$$RectDetailsModelImplCopyWith<_$RectDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

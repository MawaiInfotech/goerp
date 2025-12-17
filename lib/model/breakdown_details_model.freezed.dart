// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breakdown_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreakdownDetailsModel _$BreakdownDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _BreakdownDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BreakdownDetailsModel {
  List<RectificationTypeModel> get recti_type =>
      throw _privateConstructorUsedError;
  List<BreakdownReasonModel> get break_type =>
      throw _privateConstructorUsedError;
  List<SpareCodeModel> get spare_cd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreakdownDetailsModelCopyWith<BreakdownDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakdownDetailsModelCopyWith<$Res> {
  factory $BreakdownDetailsModelCopyWith(BreakdownDetailsModel value,
          $Res Function(BreakdownDetailsModel) then) =
      _$BreakdownDetailsModelCopyWithImpl<$Res, BreakdownDetailsModel>;
  @useResult
  $Res call(
      {List<RectificationTypeModel> recti_type,
      List<BreakdownReasonModel> break_type,
      List<SpareCodeModel> spare_cd});
}

/// @nodoc
class _$BreakdownDetailsModelCopyWithImpl<$Res,
        $Val extends BreakdownDetailsModel>
    implements $BreakdownDetailsModelCopyWith<$Res> {
  _$BreakdownDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recti_type = null,
    Object? break_type = null,
    Object? spare_cd = null,
  }) {
    return _then(_value.copyWith(
      recti_type: null == recti_type
          ? _value.recti_type
          : recti_type // ignore: cast_nullable_to_non_nullable
              as List<RectificationTypeModel>,
      break_type: null == break_type
          ? _value.break_type
          : break_type // ignore: cast_nullable_to_non_nullable
              as List<BreakdownReasonModel>,
      spare_cd: null == spare_cd
          ? _value.spare_cd
          : spare_cd // ignore: cast_nullable_to_non_nullable
              as List<SpareCodeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreakdownDetailsModelImplCopyWith<$Res>
    implements $BreakdownDetailsModelCopyWith<$Res> {
  factory _$$BreakdownDetailsModelImplCopyWith(
          _$BreakdownDetailsModelImpl value,
          $Res Function(_$BreakdownDetailsModelImpl) then) =
      __$$BreakdownDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RectificationTypeModel> recti_type,
      List<BreakdownReasonModel> break_type,
      List<SpareCodeModel> spare_cd});
}

/// @nodoc
class __$$BreakdownDetailsModelImplCopyWithImpl<$Res>
    extends _$BreakdownDetailsModelCopyWithImpl<$Res,
        _$BreakdownDetailsModelImpl>
    implements _$$BreakdownDetailsModelImplCopyWith<$Res> {
  __$$BreakdownDetailsModelImplCopyWithImpl(_$BreakdownDetailsModelImpl _value,
      $Res Function(_$BreakdownDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recti_type = null,
    Object? break_type = null,
    Object? spare_cd = null,
  }) {
    return _then(_$BreakdownDetailsModelImpl(
      recti_type: null == recti_type
          ? _value._recti_type
          : recti_type // ignore: cast_nullable_to_non_nullable
              as List<RectificationTypeModel>,
      break_type: null == break_type
          ? _value._break_type
          : break_type // ignore: cast_nullable_to_non_nullable
              as List<BreakdownReasonModel>,
      spare_cd: null == spare_cd
          ? _value._spare_cd
          : spare_cd // ignore: cast_nullable_to_non_nullable
              as List<SpareCodeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreakdownDetailsModelImpl implements _BreakdownDetailsModel {
  const _$BreakdownDetailsModelImpl(
      {final List<RectificationTypeModel> recti_type =
          const <RectificationTypeModel>[],
      final List<BreakdownReasonModel> break_type =
          const <BreakdownReasonModel>[],
      final List<SpareCodeModel> spare_cd = const <SpareCodeModel>[]})
      : _recti_type = recti_type,
        _break_type = break_type,
        _spare_cd = spare_cd;

  factory _$BreakdownDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreakdownDetailsModelImplFromJson(json);

  final List<RectificationTypeModel> _recti_type;
  @override
  @JsonKey()
  List<RectificationTypeModel> get recti_type {
    if (_recti_type is EqualUnmodifiableListView) return _recti_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recti_type);
  }

  final List<BreakdownReasonModel> _break_type;
  @override
  @JsonKey()
  List<BreakdownReasonModel> get break_type {
    if (_break_type is EqualUnmodifiableListView) return _break_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_break_type);
  }

  final List<SpareCodeModel> _spare_cd;
  @override
  @JsonKey()
  List<SpareCodeModel> get spare_cd {
    if (_spare_cd is EqualUnmodifiableListView) return _spare_cd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spare_cd);
  }

  @override
  String toString() {
    return 'BreakdownDetailsModel(recti_type: $recti_type, break_type: $break_type, spare_cd: $spare_cd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakdownDetailsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._recti_type, _recti_type) &&
            const DeepCollectionEquality()
                .equals(other._break_type, _break_type) &&
            const DeepCollectionEquality().equals(other._spare_cd, _spare_cd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recti_type),
      const DeepCollectionEquality().hash(_break_type),
      const DeepCollectionEquality().hash(_spare_cd));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakdownDetailsModelImplCopyWith<_$BreakdownDetailsModelImpl>
      get copyWith => __$$BreakdownDetailsModelImplCopyWithImpl<
          _$BreakdownDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreakdownDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BreakdownDetailsModel implements BreakdownDetailsModel {
  const factory _BreakdownDetailsModel(
      {final List<RectificationTypeModel> recti_type,
      final List<BreakdownReasonModel> break_type,
      final List<SpareCodeModel> spare_cd}) = _$BreakdownDetailsModelImpl;

  factory _BreakdownDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BreakdownDetailsModelImpl.fromJson;

  @override
  List<RectificationTypeModel> get recti_type;
  @override
  List<BreakdownReasonModel> get break_type;
  @override
  List<SpareCodeModel> get spare_cd;
  @override
  @JsonKey(ignore: true)
  _$$BreakdownDetailsModelImplCopyWith<_$BreakdownDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

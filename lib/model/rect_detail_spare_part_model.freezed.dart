// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rect_detail_spare_part_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RectDetailSparePartModel _$RectDetailSparePartModelFromJson(
    Map<String, dynamic> json) {
  return _RectDetailSparePartModel.fromJson(json);
}

/// @nodoc
mixin _$RectDetailSparePartModel {
  @JsonKey(name: "spare_con_co")
  String get spare_con_co => throw _privateConstructorUsedError;
  @JsonKey(name: "item_type")
  String get item_type => throw _privateConstructorUsedError;
  @JsonKey(name: "no_off")
  String get no_off => throw _privateConstructorUsedError;
  @JsonKey(name: "others")
  String get others => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RectDetailSparePartModelCopyWith<RectDetailSparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectDetailSparePartModelCopyWith<$Res> {
  factory $RectDetailSparePartModelCopyWith(RectDetailSparePartModel value,
          $Res Function(RectDetailSparePartModel) then) =
      _$RectDetailSparePartModelCopyWithImpl<$Res, RectDetailSparePartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "spare_con_co") String spare_con_co,
      @JsonKey(name: "item_type") String item_type,
      @JsonKey(name: "no_off") String no_off,
      @JsonKey(name: "others") String others});
}

/// @nodoc
class _$RectDetailSparePartModelCopyWithImpl<$Res,
        $Val extends RectDetailSparePartModel>
    implements $RectDetailSparePartModelCopyWith<$Res> {
  _$RectDetailSparePartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spare_con_co = null,
    Object? item_type = null,
    Object? no_off = null,
    Object? others = null,
  }) {
    return _then(_value.copyWith(
      spare_con_co: null == spare_con_co
          ? _value.spare_con_co
          : spare_con_co // ignore: cast_nullable_to_non_nullable
              as String,
      item_type: null == item_type
          ? _value.item_type
          : item_type // ignore: cast_nullable_to_non_nullable
              as String,
      no_off: null == no_off
          ? _value.no_off
          : no_off // ignore: cast_nullable_to_non_nullable
              as String,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RectDetailSparePartModelImplCopyWith<$Res>
    implements $RectDetailSparePartModelCopyWith<$Res> {
  factory _$$RectDetailSparePartModelImplCopyWith(
          _$RectDetailSparePartModelImpl value,
          $Res Function(_$RectDetailSparePartModelImpl) then) =
      __$$RectDetailSparePartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "spare_con_co") String spare_con_co,
      @JsonKey(name: "item_type") String item_type,
      @JsonKey(name: "no_off") String no_off,
      @JsonKey(name: "others") String others});
}

/// @nodoc
class __$$RectDetailSparePartModelImplCopyWithImpl<$Res>
    extends _$RectDetailSparePartModelCopyWithImpl<$Res,
        _$RectDetailSparePartModelImpl>
    implements _$$RectDetailSparePartModelImplCopyWith<$Res> {
  __$$RectDetailSparePartModelImplCopyWithImpl(
      _$RectDetailSparePartModelImpl _value,
      $Res Function(_$RectDetailSparePartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spare_con_co = null,
    Object? item_type = null,
    Object? no_off = null,
    Object? others = null,
  }) {
    return _then(_$RectDetailSparePartModelImpl(
      spare_con_co: null == spare_con_co
          ? _value.spare_con_co
          : spare_con_co // ignore: cast_nullable_to_non_nullable
              as String,
      item_type: null == item_type
          ? _value.item_type
          : item_type // ignore: cast_nullable_to_non_nullable
              as String,
      no_off: null == no_off
          ? _value.no_off
          : no_off // ignore: cast_nullable_to_non_nullable
              as String,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectDetailSparePartModelImpl implements _RectDetailSparePartModel {
  const _$RectDetailSparePartModelImpl(
      {@JsonKey(name: "spare_con_co") this.spare_con_co = "",
      @JsonKey(name: "item_type") this.item_type = "",
      @JsonKey(name: "no_off") this.no_off = "",
      @JsonKey(name: "others") this.others = ""});

  factory _$RectDetailSparePartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectDetailSparePartModelImplFromJson(json);

  @override
  @JsonKey(name: "spare_con_co")
  final String spare_con_co;
  @override
  @JsonKey(name: "item_type")
  final String item_type;
  @override
  @JsonKey(name: "no_off")
  final String no_off;
  @override
  @JsonKey(name: "others")
  final String others;

  @override
  String toString() {
    return 'RectDetailSparePartModel(spare_con_co: $spare_con_co, item_type: $item_type, no_off: $no_off, others: $others)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectDetailSparePartModelImpl &&
            (identical(other.spare_con_co, spare_con_co) ||
                other.spare_con_co == spare_con_co) &&
            (identical(other.item_type, item_type) ||
                other.item_type == item_type) &&
            (identical(other.no_off, no_off) || other.no_off == no_off) &&
            (identical(other.others, others) || other.others == others));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, spare_con_co, item_type, no_off, others);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RectDetailSparePartModelImplCopyWith<_$RectDetailSparePartModelImpl>
      get copyWith => __$$RectDetailSparePartModelImplCopyWithImpl<
          _$RectDetailSparePartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectDetailSparePartModelImplToJson(
      this,
    );
  }
}

abstract class _RectDetailSparePartModel implements RectDetailSparePartModel {
  const factory _RectDetailSparePartModel(
          {@JsonKey(name: "spare_con_co") final String spare_con_co,
          @JsonKey(name: "item_type") final String item_type,
          @JsonKey(name: "no_off") final String no_off,
          @JsonKey(name: "others") final String others}) =
      _$RectDetailSparePartModelImpl;

  factory _RectDetailSparePartModel.fromJson(Map<String, dynamic> json) =
      _$RectDetailSparePartModelImpl.fromJson;

  @override
  @JsonKey(name: "spare_con_co")
  String get spare_con_co;
  @override
  @JsonKey(name: "item_type")
  String get item_type;
  @override
  @JsonKey(name: "no_off")
  String get no_off;
  @override
  @JsonKey(name: "others")
  String get others;
  @override
  @JsonKey(ignore: true)
  _$$RectDetailSparePartModelImplCopyWith<_$RectDetailSparePartModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

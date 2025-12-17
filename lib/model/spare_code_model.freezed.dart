// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spare_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpareCodeModel _$SpareCodeModelFromJson(Map<String, dynamic> json) {
  return _SpareCodeModel.fromJson(json);
}

/// @nodoc
mixin _$SpareCodeModel {
  @JsonKey(name: "item_cd")
  String get itemCode => throw _privateConstructorUsedError;
  @JsonKey(name: "item_desc")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "item_type")
  String get itemType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpareCodeModelCopyWith<SpareCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpareCodeModelCopyWith<$Res> {
  factory $SpareCodeModelCopyWith(
          SpareCodeModel value, $Res Function(SpareCodeModel) then) =
      _$SpareCodeModelCopyWithImpl<$Res, SpareCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "item_cd") String itemCode,
      @JsonKey(name: "item_desc") String description,
      @JsonKey(name: "item_type") String itemType});
}

/// @nodoc
class _$SpareCodeModelCopyWithImpl<$Res, $Val extends SpareCodeModel>
    implements $SpareCodeModelCopyWith<$Res> {
  _$SpareCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? description = null,
    Object? itemType = null,
  }) {
    return _then(_value.copyWith(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpareCodeModelImplCopyWith<$Res>
    implements $SpareCodeModelCopyWith<$Res> {
  factory _$$SpareCodeModelImplCopyWith(_$SpareCodeModelImpl value,
          $Res Function(_$SpareCodeModelImpl) then) =
      __$$SpareCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "item_cd") String itemCode,
      @JsonKey(name: "item_desc") String description,
      @JsonKey(name: "item_type") String itemType});
}

/// @nodoc
class __$$SpareCodeModelImplCopyWithImpl<$Res>
    extends _$SpareCodeModelCopyWithImpl<$Res, _$SpareCodeModelImpl>
    implements _$$SpareCodeModelImplCopyWith<$Res> {
  __$$SpareCodeModelImplCopyWithImpl(
      _$SpareCodeModelImpl _value, $Res Function(_$SpareCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? description = null,
    Object? itemType = null,
  }) {
    return _then(_$SpareCodeModelImpl(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpareCodeModelImpl implements _SpareCodeModel {
  const _$SpareCodeModelImpl(
      {@JsonKey(name: "item_cd") this.itemCode = "",
      @JsonKey(name: "item_desc") this.description = "",
      @JsonKey(name: "item_type") this.itemType = ""});

  factory _$SpareCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpareCodeModelImplFromJson(json);

  @override
  @JsonKey(name: "item_cd")
  final String itemCode;
  @override
  @JsonKey(name: "item_desc")
  final String description;
  @override
  @JsonKey(name: "item_type")
  final String itemType;

  @override
  String toString() {
    return 'SpareCodeModel(itemCode: $itemCode, description: $description, itemType: $itemType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpareCodeModelImpl &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemCode, description, itemType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpareCodeModelImplCopyWith<_$SpareCodeModelImpl> get copyWith =>
      __$$SpareCodeModelImplCopyWithImpl<_$SpareCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpareCodeModelImplToJson(
      this,
    );
  }
}

abstract class _SpareCodeModel implements SpareCodeModel {
  const factory _SpareCodeModel(
          {@JsonKey(name: "item_cd") final String itemCode,
          @JsonKey(name: "item_desc") final String description,
          @JsonKey(name: "item_type") final String itemType}) =
      _$SpareCodeModelImpl;

  factory _SpareCodeModel.fromJson(Map<String, dynamic> json) =
      _$SpareCodeModelImpl.fromJson;

  @override
  @JsonKey(name: "item_cd")
  String get itemCode;
  @override
  @JsonKey(name: "item_desc")
  String get description;
  @override
  @JsonKey(name: "item_type")
  String get itemType;
  @override
  @JsonKey(ignore: true)
  _$$SpareCodeModelImplCopyWith<_$SpareCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

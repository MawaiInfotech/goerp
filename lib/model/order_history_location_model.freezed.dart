// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderHistoryLocationModel _$OrderHistoryLocationModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryLocationModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryLocationModel {
  @JsonKey(name: "locat_code")
  String get locationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "short_desc")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryLocationModelCopyWith<OrderHistoryLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryLocationModelCopyWith<$Res> {
  factory $OrderHistoryLocationModelCopyWith(OrderHistoryLocationModel value,
          $Res Function(OrderHistoryLocationModel) then) =
      _$OrderHistoryLocationModelCopyWithImpl<$Res, OrderHistoryLocationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "locat_code") String locationCode,
      @JsonKey(name: "short_desc") String description});
}

/// @nodoc
class _$OrderHistoryLocationModelCopyWithImpl<$Res,
        $Val extends OrderHistoryLocationModel>
    implements $OrderHistoryLocationModelCopyWith<$Res> {
  _$OrderHistoryLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderHistoryLocationModelImplCopyWith<$Res>
    implements $OrderHistoryLocationModelCopyWith<$Res> {
  factory _$$OrderHistoryLocationModelImplCopyWith(
          _$OrderHistoryLocationModelImpl value,
          $Res Function(_$OrderHistoryLocationModelImpl) then) =
      __$$OrderHistoryLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locat_code") String locationCode,
      @JsonKey(name: "short_desc") String description});
}

/// @nodoc
class __$$OrderHistoryLocationModelImplCopyWithImpl<$Res>
    extends _$OrderHistoryLocationModelCopyWithImpl<$Res,
        _$OrderHistoryLocationModelImpl>
    implements _$$OrderHistoryLocationModelImplCopyWith<$Res> {
  __$$OrderHistoryLocationModelImplCopyWithImpl(
      _$OrderHistoryLocationModelImpl _value,
      $Res Function(_$OrderHistoryLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
    Object? description = null,
  }) {
    return _then(_$OrderHistoryLocationModelImpl(
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
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
class _$OrderHistoryLocationModelImpl implements _OrderHistoryLocationModel {
  const _$OrderHistoryLocationModelImpl(
      {@JsonKey(name: "locat_code") this.locationCode = "",
      @JsonKey(name: "short_desc") this.description = ""});

  factory _$OrderHistoryLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryLocationModelImplFromJson(json);

  @override
  @JsonKey(name: "locat_code")
  final String locationCode;
  @override
  @JsonKey(name: "short_desc")
  final String description;

  @override
  String toString() {
    return 'OrderHistoryLocationModel(locationCode: $locationCode, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryLocationModelImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationCode, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryLocationModelImplCopyWith<_$OrderHistoryLocationModelImpl>
      get copyWith => __$$OrderHistoryLocationModelImplCopyWithImpl<
          _$OrderHistoryLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryLocationModelImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryLocationModel implements OrderHistoryLocationModel {
  const factory _OrderHistoryLocationModel(
          {@JsonKey(name: "locat_code") final String locationCode,
          @JsonKey(name: "short_desc") final String description}) =
      _$OrderHistoryLocationModelImpl;

  factory _OrderHistoryLocationModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryLocationModelImpl.fromJson;

  @override
  @JsonKey(name: "locat_code")
  String get locationCode;
  @override
  @JsonKey(name: "short_desc")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OrderHistoryLocationModelImplCopyWith<_$OrderHistoryLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

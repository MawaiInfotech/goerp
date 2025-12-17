// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderHistoryMachineModel _$OrderHistoryMachineModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryMachineModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryMachineModel {
  @JsonKey(name: "mach_code")
  String get machineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryMachineModelCopyWith<OrderHistoryMachineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryMachineModelCopyWith<$Res> {
  factory $OrderHistoryMachineModelCopyWith(OrderHistoryMachineModel value,
          $Res Function(OrderHistoryMachineModel) then) =
      _$OrderHistoryMachineModelCopyWithImpl<$Res, OrderHistoryMachineModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "mach_code") String machineCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$OrderHistoryMachineModelCopyWithImpl<$Res,
        $Val extends OrderHistoryMachineModel>
    implements $OrderHistoryMachineModelCopyWith<$Res> {
  _$OrderHistoryMachineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineCode = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      machineCode: null == machineCode
          ? _value.machineCode
          : machineCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderHistoryMachineModelImplCopyWith<$Res>
    implements $OrderHistoryMachineModelCopyWith<$Res> {
  factory _$$OrderHistoryMachineModelImplCopyWith(
          _$OrderHistoryMachineModelImpl value,
          $Res Function(_$OrderHistoryMachineModelImpl) then) =
      __$$OrderHistoryMachineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mach_code") String machineCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$OrderHistoryMachineModelImplCopyWithImpl<$Res>
    extends _$OrderHistoryMachineModelCopyWithImpl<$Res,
        _$OrderHistoryMachineModelImpl>
    implements _$$OrderHistoryMachineModelImplCopyWith<$Res> {
  __$$OrderHistoryMachineModelImplCopyWithImpl(
      _$OrderHistoryMachineModelImpl _value,
      $Res Function(_$OrderHistoryMachineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineCode = null,
    Object? description = null,
  }) {
    return _then(_$OrderHistoryMachineModelImpl(
      machineCode: null == machineCode
          ? _value.machineCode
          : machineCode // ignore: cast_nullable_to_non_nullable
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
class _$OrderHistoryMachineModelImpl implements _OrderHistoryMachineModel {
  const _$OrderHistoryMachineModelImpl(
      {@JsonKey(name: "mach_code") this.machineCode = "",
      @JsonKey(name: "description") this.description = ""});

  factory _$OrderHistoryMachineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryMachineModelImplFromJson(json);

  @override
  @JsonKey(name: "mach_code")
  final String machineCode;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'OrderHistoryMachineModel(machineCode: $machineCode, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryMachineModelImpl &&
            (identical(other.machineCode, machineCode) ||
                other.machineCode == machineCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, machineCode, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryMachineModelImplCopyWith<_$OrderHistoryMachineModelImpl>
      get copyWith => __$$OrderHistoryMachineModelImplCopyWithImpl<
          _$OrderHistoryMachineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryMachineModelImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryMachineModel implements OrderHistoryMachineModel {
  const factory _OrderHistoryMachineModel(
          {@JsonKey(name: "mach_code") final String machineCode,
          @JsonKey(name: "description") final String description}) =
      _$OrderHistoryMachineModelImpl;

  factory _OrderHistoryMachineModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryMachineModelImpl.fromJson;

  @override
  @JsonKey(name: "mach_code")
  String get machineCode;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OrderHistoryMachineModelImplCopyWith<_$OrderHistoryMachineModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationMachineModel _$LocationMachineModelFromJson(Map<String, dynamic> json) {
  return _LocationMachineModel.fromJson(json);
}

/// @nodoc
mixin _$LocationMachineModel {
  List<OrderHistoryLocationModel> get location_list =>
      throw _privateConstructorUsedError;
  List<OrderHistoryMachineModel> get machine_list =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationMachineModelCopyWith<LocationMachineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationMachineModelCopyWith<$Res> {
  factory $LocationMachineModelCopyWith(LocationMachineModel value,
          $Res Function(LocationMachineModel) then) =
      _$LocationMachineModelCopyWithImpl<$Res, LocationMachineModel>;
  @useResult
  $Res call(
      {List<OrderHistoryLocationModel> location_list,
      List<OrderHistoryMachineModel> machine_list});
}

/// @nodoc
class _$LocationMachineModelCopyWithImpl<$Res,
        $Val extends LocationMachineModel>
    implements $LocationMachineModelCopyWith<$Res> {
  _$LocationMachineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_list = null,
    Object? machine_list = null,
  }) {
    return _then(_value.copyWith(
      location_list: null == location_list
          ? _value.location_list
          : location_list // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryLocationModel>,
      machine_list: null == machine_list
          ? _value.machine_list
          : machine_list // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryMachineModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationMachineModelImplCopyWith<$Res>
    implements $LocationMachineModelCopyWith<$Res> {
  factory _$$LocationMachineModelImplCopyWith(_$LocationMachineModelImpl value,
          $Res Function(_$LocationMachineModelImpl) then) =
      __$$LocationMachineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrderHistoryLocationModel> location_list,
      List<OrderHistoryMachineModel> machine_list});
}

/// @nodoc
class __$$LocationMachineModelImplCopyWithImpl<$Res>
    extends _$LocationMachineModelCopyWithImpl<$Res, _$LocationMachineModelImpl>
    implements _$$LocationMachineModelImplCopyWith<$Res> {
  __$$LocationMachineModelImplCopyWithImpl(_$LocationMachineModelImpl _value,
      $Res Function(_$LocationMachineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_list = null,
    Object? machine_list = null,
  }) {
    return _then(_$LocationMachineModelImpl(
      location_list: null == location_list
          ? _value._location_list
          : location_list // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryLocationModel>,
      machine_list: null == machine_list
          ? _value._machine_list
          : machine_list // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryMachineModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationMachineModelImpl implements _LocationMachineModel {
  const _$LocationMachineModelImpl(
      {final List<OrderHistoryLocationModel> location_list =
          const <OrderHistoryLocationModel>[],
      final List<OrderHistoryMachineModel> machine_list =
          const <OrderHistoryMachineModel>[]})
      : _location_list = location_list,
        _machine_list = machine_list;

  factory _$LocationMachineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationMachineModelImplFromJson(json);

  final List<OrderHistoryLocationModel> _location_list;
  @override
  @JsonKey()
  List<OrderHistoryLocationModel> get location_list {
    if (_location_list is EqualUnmodifiableListView) return _location_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location_list);
  }

  final List<OrderHistoryMachineModel> _machine_list;
  @override
  @JsonKey()
  List<OrderHistoryMachineModel> get machine_list {
    if (_machine_list is EqualUnmodifiableListView) return _machine_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machine_list);
  }

  @override
  String toString() {
    return 'LocationMachineModel(location_list: $location_list, machine_list: $machine_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationMachineModelImpl &&
            const DeepCollectionEquality()
                .equals(other._location_list, _location_list) &&
            const DeepCollectionEquality()
                .equals(other._machine_list, _machine_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_location_list),
      const DeepCollectionEquality().hash(_machine_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationMachineModelImplCopyWith<_$LocationMachineModelImpl>
      get copyWith =>
          __$$LocationMachineModelImplCopyWithImpl<_$LocationMachineModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationMachineModelImplToJson(
      this,
    );
  }
}

abstract class _LocationMachineModel implements LocationMachineModel {
  const factory _LocationMachineModel(
          {final List<OrderHistoryLocationModel> location_list,
          final List<OrderHistoryMachineModel> machine_list}) =
      _$LocationMachineModelImpl;

  factory _LocationMachineModel.fromJson(Map<String, dynamic> json) =
      _$LocationMachineModelImpl.fromJson;

  @override
  List<OrderHistoryLocationModel> get location_list;
  @override
  List<OrderHistoryMachineModel> get machine_list;
  @override
  @JsonKey(ignore: true)
  _$$LocationMachineModelImplCopyWith<_$LocationMachineModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

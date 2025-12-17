// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machine_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineDetailsModel _$MachineDetailsModelFromJson(Map<String, dynamic> json) {
  return _MachineDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MachineDetailsModel {
  @JsonKey(name: "mach_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "machine_name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "locat_code")
  String get locationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: "installation_date")
  String get installationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineDetailsModelCopyWith<MachineDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineDetailsModelCopyWith<$Res> {
  factory $MachineDetailsModelCopyWith(
          MachineDetailsModel value, $Res Function(MachineDetailsModel) then) =
      _$MachineDetailsModelCopyWithImpl<$Res, MachineDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "mach_code") String code,
      @JsonKey(name: "machine_name") String name,
      @JsonKey(name: "locat_code") String locationCode,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "installation_date") String installationDate});
}

/// @nodoc
class _$MachineDetailsModelCopyWithImpl<$Res, $Val extends MachineDetailsModel>
    implements $MachineDetailsModelCopyWith<$Res> {
  _$MachineDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? locationCode = null,
    Object? locationName = null,
    Object? installationDate = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineDetailsModelImplCopyWith<$Res>
    implements $MachineDetailsModelCopyWith<$Res> {
  factory _$$MachineDetailsModelImplCopyWith(_$MachineDetailsModelImpl value,
          $Res Function(_$MachineDetailsModelImpl) then) =
      __$$MachineDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mach_code") String code,
      @JsonKey(name: "machine_name") String name,
      @JsonKey(name: "locat_code") String locationCode,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "installation_date") String installationDate});
}

/// @nodoc
class __$$MachineDetailsModelImplCopyWithImpl<$Res>
    extends _$MachineDetailsModelCopyWithImpl<$Res, _$MachineDetailsModelImpl>
    implements _$$MachineDetailsModelImplCopyWith<$Res> {
  __$$MachineDetailsModelImplCopyWithImpl(_$MachineDetailsModelImpl _value,
      $Res Function(_$MachineDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? locationCode = null,
    Object? locationName = null,
    Object? installationDate = null,
  }) {
    return _then(_$MachineDetailsModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineDetailsModelImpl implements _MachineDetailsModel {
  const _$MachineDetailsModelImpl(
      {@JsonKey(name: "mach_code") this.code = "",
      @JsonKey(name: "machine_name") this.name = "",
      @JsonKey(name: "locat_code") this.locationCode = "",
      @JsonKey(name: "location_name") this.locationName = "",
      @JsonKey(name: "installation_date") this.installationDate = ""});

  factory _$MachineDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "mach_code")
  final String code;
  @override
  @JsonKey(name: "machine_name")
  final String name;
  @override
  @JsonKey(name: "locat_code")
  final String locationCode;
  @override
  @JsonKey(name: "location_name")
  final String locationName;
  @override
  @JsonKey(name: "installation_date")
  final String installationDate;

  @override
  String toString() {
    return 'MachineDetailsModel(code: $code, name: $name, locationCode: $locationCode, locationName: $locationName, installationDate: $installationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineDetailsModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, locationCode, locationName, installationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineDetailsModelImplCopyWith<_$MachineDetailsModelImpl> get copyWith =>
      __$$MachineDetailsModelImplCopyWithImpl<_$MachineDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MachineDetailsModel implements MachineDetailsModel {
  const factory _MachineDetailsModel(
          {@JsonKey(name: "mach_code") final String code,
          @JsonKey(name: "machine_name") final String name,
          @JsonKey(name: "locat_code") final String locationCode,
          @JsonKey(name: "location_name") final String locationName,
          @JsonKey(name: "installation_date") final String installationDate}) =
      _$MachineDetailsModelImpl;

  factory _MachineDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MachineDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "mach_code")
  String get code;
  @override
  @JsonKey(name: "machine_name")
  String get name;
  @override
  @JsonKey(name: "locat_code")
  String get locationCode;
  @override
  @JsonKey(name: "location_name")
  String get locationName;
  @override
  @JsonKey(name: "installation_date")
  String get installationDate;
  @override
  @JsonKey(ignore: true)
  _$$MachineDetailsModelImplCopyWith<_$MachineDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

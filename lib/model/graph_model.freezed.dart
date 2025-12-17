// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GraphModel _$GraphModelFromJson(Map<String, dynamic> json) {
  return _GraphModel.fromJson(json);
}

/// @nodoc
mixin _$GraphModel {
  @JsonKey(name: 'fin_years')
  String get finalYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'amounts')
  double get AmountSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'xaxisvalue')
  String get xAxisValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'graph_name')
  String get graphName => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphModelCopyWith<GraphModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphModelCopyWith<$Res> {
  factory $GraphModelCopyWith(
          GraphModel value, $Res Function(GraphModel) then) =
      _$GraphModelCopyWithImpl<$Res, GraphModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fin_years') String finalYear,
      @JsonKey(name: 'amounts') double AmountSales,
      @JsonKey(name: 'xaxisvalue') String xAxisValue,
      @JsonKey(name: 'graph_name') String graphName,
      Map<String, String?> errors});
}

/// @nodoc
class _$GraphModelCopyWithImpl<$Res, $Val extends GraphModel>
    implements $GraphModelCopyWith<$Res> {
  _$GraphModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalYear = null,
    Object? AmountSales = null,
    Object? xAxisValue = null,
    Object? graphName = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      finalYear: null == finalYear
          ? _value.finalYear
          : finalYear // ignore: cast_nullable_to_non_nullable
              as String,
      AmountSales: null == AmountSales
          ? _value.AmountSales
          : AmountSales // ignore: cast_nullable_to_non_nullable
              as double,
      xAxisValue: null == xAxisValue
          ? _value.xAxisValue
          : xAxisValue // ignore: cast_nullable_to_non_nullable
              as String,
      graphName: null == graphName
          ? _value.graphName
          : graphName // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphModelImplCopyWith<$Res>
    implements $GraphModelCopyWith<$Res> {
  factory _$$GraphModelImplCopyWith(
          _$GraphModelImpl value, $Res Function(_$GraphModelImpl) then) =
      __$$GraphModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fin_years') String finalYear,
      @JsonKey(name: 'amounts') double AmountSales,
      @JsonKey(name: 'xaxisvalue') String xAxisValue,
      @JsonKey(name: 'graph_name') String graphName,
      Map<String, String?> errors});
}

/// @nodoc
class __$$GraphModelImplCopyWithImpl<$Res>
    extends _$GraphModelCopyWithImpl<$Res, _$GraphModelImpl>
    implements _$$GraphModelImplCopyWith<$Res> {
  __$$GraphModelImplCopyWithImpl(
      _$GraphModelImpl _value, $Res Function(_$GraphModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalYear = null,
    Object? AmountSales = null,
    Object? xAxisValue = null,
    Object? graphName = null,
    Object? errors = null,
  }) {
    return _then(_$GraphModelImpl(
      finalYear: null == finalYear
          ? _value.finalYear
          : finalYear // ignore: cast_nullable_to_non_nullable
              as String,
      AmountSales: null == AmountSales
          ? _value.AmountSales
          : AmountSales // ignore: cast_nullable_to_non_nullable
              as double,
      xAxisValue: null == xAxisValue
          ? _value.xAxisValue
          : xAxisValue // ignore: cast_nullable_to_non_nullable
              as String,
      graphName: null == graphName
          ? _value.graphName
          : graphName // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GraphModelImpl implements _GraphModel {
  const _$GraphModelImpl(
      {@JsonKey(name: 'fin_years') this.finalYear = '',
      @JsonKey(name: 'amounts') this.AmountSales = 0.0,
      @JsonKey(name: 'xaxisvalue') this.xAxisValue = '',
      @JsonKey(name: 'graph_name') this.graphName = '',
      final Map<String, String?> errors = const {}})
      : _errors = errors;

  factory _$GraphModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraphModelImplFromJson(json);

  @override
  @JsonKey(name: 'fin_years')
  final String finalYear;
  @override
  @JsonKey(name: 'amounts')
  final double AmountSales;
  @override
  @JsonKey(name: 'xaxisvalue')
  final String xAxisValue;
  @override
  @JsonKey(name: 'graph_name')
  final String graphName;
  final Map<String, String?> _errors;
  @override
  @JsonKey()
  Map<String, String?> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'GraphModel(finalYear: $finalYear, AmountSales: $AmountSales, xAxisValue: $xAxisValue, graphName: $graphName, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphModelImpl &&
            (identical(other.finalYear, finalYear) ||
                other.finalYear == finalYear) &&
            (identical(other.AmountSales, AmountSales) ||
                other.AmountSales == AmountSales) &&
            (identical(other.xAxisValue, xAxisValue) ||
                other.xAxisValue == xAxisValue) &&
            (identical(other.graphName, graphName) ||
                other.graphName == graphName) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, finalYear, AmountSales,
      xAxisValue, graphName, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphModelImplCopyWith<_$GraphModelImpl> get copyWith =>
      __$$GraphModelImplCopyWithImpl<_$GraphModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraphModelImplToJson(
      this,
    );
  }
}

abstract class _GraphModel implements GraphModel {
  const factory _GraphModel(
      {@JsonKey(name: 'fin_years') final String finalYear,
      @JsonKey(name: 'amounts') final double AmountSales,
      @JsonKey(name: 'xaxisvalue') final String xAxisValue,
      @JsonKey(name: 'graph_name') final String graphName,
      final Map<String, String?> errors}) = _$GraphModelImpl;

  factory _GraphModel.fromJson(Map<String, dynamic> json) =
      _$GraphModelImpl.fromJson;

  @override
  @JsonKey(name: 'fin_years')
  String get finalYear;
  @override
  @JsonKey(name: 'amounts')
  double get AmountSales;
  @override
  @JsonKey(name: 'xaxisvalue')
  String get xAxisValue;
  @override
  @JsonKey(name: 'graph_name')
  String get graphName;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$GraphModelImplCopyWith<_$GraphModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplaintHistoryModel _$ComplaintHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _ComplaintHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ComplaintHistoryModel {
  @JsonKey(name: "pdf_url")
  String get pdf_url => throw _privateConstructorUsedError;
  @JsonKey(name: "excel_url")
  String get excel_url => throw _privateConstructorUsedError;
  List<ComplaintHistoryListModel> get details_data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplaintHistoryModelCopyWith<ComplaintHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintHistoryModelCopyWith<$Res> {
  factory $ComplaintHistoryModelCopyWith(ComplaintHistoryModel value,
          $Res Function(ComplaintHistoryModel) then) =
      _$ComplaintHistoryModelCopyWithImpl<$Res, ComplaintHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "pdf_url") String pdf_url,
      @JsonKey(name: "excel_url") String excel_url,
      List<ComplaintHistoryListModel> details_data});
}

/// @nodoc
class _$ComplaintHistoryModelCopyWithImpl<$Res,
        $Val extends ComplaintHistoryModel>
    implements $ComplaintHistoryModelCopyWith<$Res> {
  _$ComplaintHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdf_url = null,
    Object? excel_url = null,
    Object? details_data = null,
  }) {
    return _then(_value.copyWith(
      pdf_url: null == pdf_url
          ? _value.pdf_url
          : pdf_url // ignore: cast_nullable_to_non_nullable
              as String,
      excel_url: null == excel_url
          ? _value.excel_url
          : excel_url // ignore: cast_nullable_to_non_nullable
              as String,
      details_data: null == details_data
          ? _value.details_data
          : details_data // ignore: cast_nullable_to_non_nullable
              as List<ComplaintHistoryListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintHistoryModelImplCopyWith<$Res>
    implements $ComplaintHistoryModelCopyWith<$Res> {
  factory _$$ComplaintHistoryModelImplCopyWith(
          _$ComplaintHistoryModelImpl value,
          $Res Function(_$ComplaintHistoryModelImpl) then) =
      __$$ComplaintHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pdf_url") String pdf_url,
      @JsonKey(name: "excel_url") String excel_url,
      List<ComplaintHistoryListModel> details_data});
}

/// @nodoc
class __$$ComplaintHistoryModelImplCopyWithImpl<$Res>
    extends _$ComplaintHistoryModelCopyWithImpl<$Res,
        _$ComplaintHistoryModelImpl>
    implements _$$ComplaintHistoryModelImplCopyWith<$Res> {
  __$$ComplaintHistoryModelImplCopyWithImpl(_$ComplaintHistoryModelImpl _value,
      $Res Function(_$ComplaintHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdf_url = null,
    Object? excel_url = null,
    Object? details_data = null,
  }) {
    return _then(_$ComplaintHistoryModelImpl(
      pdf_url: null == pdf_url
          ? _value.pdf_url
          : pdf_url // ignore: cast_nullable_to_non_nullable
              as String,
      excel_url: null == excel_url
          ? _value.excel_url
          : excel_url // ignore: cast_nullable_to_non_nullable
              as String,
      details_data: null == details_data
          ? _value._details_data
          : details_data // ignore: cast_nullable_to_non_nullable
              as List<ComplaintHistoryListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplaintHistoryModelImpl implements _ComplaintHistoryModel {
  const _$ComplaintHistoryModelImpl(
      {@JsonKey(name: "pdf_url") this.pdf_url = "",
      @JsonKey(name: "excel_url") this.excel_url = "",
      final List<ComplaintHistoryListModel> details_data =
          const <ComplaintHistoryListModel>[]})
      : _details_data = details_data;

  factory _$ComplaintHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: "pdf_url")
  final String pdf_url;
  @override
  @JsonKey(name: "excel_url")
  final String excel_url;
  final List<ComplaintHistoryListModel> _details_data;
  @override
  @JsonKey()
  List<ComplaintHistoryListModel> get details_data {
    if (_details_data is EqualUnmodifiableListView) return _details_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details_data);
  }

  @override
  String toString() {
    return 'ComplaintHistoryModel(pdf_url: $pdf_url, excel_url: $excel_url, details_data: $details_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintHistoryModelImpl &&
            (identical(other.pdf_url, pdf_url) || other.pdf_url == pdf_url) &&
            (identical(other.excel_url, excel_url) ||
                other.excel_url == excel_url) &&
            const DeepCollectionEquality()
                .equals(other._details_data, _details_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pdf_url, excel_url,
      const DeepCollectionEquality().hash(_details_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintHistoryModelImplCopyWith<_$ComplaintHistoryModelImpl>
      get copyWith => __$$ComplaintHistoryModelImplCopyWithImpl<
          _$ComplaintHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ComplaintHistoryModel implements ComplaintHistoryModel {
  const factory _ComplaintHistoryModel(
          {@JsonKey(name: "pdf_url") final String pdf_url,
          @JsonKey(name: "excel_url") final String excel_url,
          final List<ComplaintHistoryListModel> details_data}) =
      _$ComplaintHistoryModelImpl;

  factory _ComplaintHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ComplaintHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: "pdf_url")
  String get pdf_url;
  @override
  @JsonKey(name: "excel_url")
  String get excel_url;
  @override
  List<ComplaintHistoryListModel> get details_data;
  @override
  @JsonKey(ignore: true)
  _$$ComplaintHistoryModelImplCopyWith<_$ComplaintHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

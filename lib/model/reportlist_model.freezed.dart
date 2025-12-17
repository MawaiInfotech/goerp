// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reportlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportListModel _$ReportListModelFromJson(Map<String, dynamic> json) {
  return _ReportListModel.fromJson(json);
}

/// @nodoc
mixin _$ReportListModel {
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_display_name')
  String get fileDisplayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rep_module')
  String get module => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_seq')
  int get fileSeq => throw _privateConstructorUsedError;
  Map<String, String?> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportListModelCopyWith<ReportListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportListModelCopyWith<$Res> {
  factory $ReportListModelCopyWith(
          ReportListModel value, $Res Function(ReportListModel) then) =
      _$ReportListModelCopyWithImpl<$Res, ReportListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_display_name') String fileDisplayName,
      @JsonKey(name: 'rep_module') String module,
      @JsonKey(name: 'file_type') String fileType,
      @JsonKey(name: 'file_seq') int fileSeq,
      Map<String, String?> errors});
}

/// @nodoc
class _$ReportListModelCopyWithImpl<$Res, $Val extends ReportListModel>
    implements $ReportListModelCopyWith<$Res> {
  _$ReportListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileDisplayName = null,
    Object? module = null,
    Object? fileType = null,
    Object? fileSeq = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileDisplayName: null == fileDisplayName
          ? _value.fileDisplayName
          : fileDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      fileSeq: null == fileSeq
          ? _value.fileSeq
          : fileSeq // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportListModelImplCopyWith<$Res>
    implements $ReportListModelCopyWith<$Res> {
  factory _$$ReportListModelImplCopyWith(_$ReportListModelImpl value,
          $Res Function(_$ReportListModelImpl) then) =
      __$$ReportListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_display_name') String fileDisplayName,
      @JsonKey(name: 'rep_module') String module,
      @JsonKey(name: 'file_type') String fileType,
      @JsonKey(name: 'file_seq') int fileSeq,
      Map<String, String?> errors});
}

/// @nodoc
class __$$ReportListModelImplCopyWithImpl<$Res>
    extends _$ReportListModelCopyWithImpl<$Res, _$ReportListModelImpl>
    implements _$$ReportListModelImplCopyWith<$Res> {
  __$$ReportListModelImplCopyWithImpl(
      _$ReportListModelImpl _value, $Res Function(_$ReportListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileDisplayName = null,
    Object? module = null,
    Object? fileType = null,
    Object? fileSeq = null,
    Object? errors = null,
  }) {
    return _then(_$ReportListModelImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileDisplayName: null == fileDisplayName
          ? _value.fileDisplayName
          : fileDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      fileSeq: null == fileSeq
          ? _value.fileSeq
          : fileSeq // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportListModelImpl implements _ReportListModel {
  const _$ReportListModelImpl(
      {@JsonKey(name: 'file_id') this.fileId = '',
      @JsonKey(name: 'file_display_name') this.fileDisplayName = '',
      @JsonKey(name: 'rep_module') this.module = '',
      @JsonKey(name: 'file_type') this.fileType = '',
      @JsonKey(name: 'file_seq') this.fileSeq = 0,
      final Map<String, String?> errors = const {}})
      : _errors = errors;

  factory _$ReportListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportListModelImplFromJson(json);

  @override
  @JsonKey(name: 'file_id')
  final String fileId;
  @override
  @JsonKey(name: 'file_display_name')
  final String fileDisplayName;
  @override
  @JsonKey(name: 'rep_module')
  final String module;
  @override
  @JsonKey(name: 'file_type')
  final String fileType;
  @override
  @JsonKey(name: 'file_seq')
  final int fileSeq;
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
    return 'ReportListModel(fileId: $fileId, fileDisplayName: $fileDisplayName, module: $module, fileType: $fileType, fileSeq: $fileSeq, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportListModelImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.fileDisplayName, fileDisplayName) ||
                other.fileDisplayName == fileDisplayName) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.fileSeq, fileSeq) || other.fileSeq == fileSeq) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, fileDisplayName, module,
      fileType, fileSeq, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportListModelImplCopyWith<_$ReportListModelImpl> get copyWith =>
      __$$ReportListModelImplCopyWithImpl<_$ReportListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportListModelImplToJson(
      this,
    );
  }
}

abstract class _ReportListModel implements ReportListModel {
  const factory _ReportListModel(
      {@JsonKey(name: 'file_id') final String fileId,
      @JsonKey(name: 'file_display_name') final String fileDisplayName,
      @JsonKey(name: 'rep_module') final String module,
      @JsonKey(name: 'file_type') final String fileType,
      @JsonKey(name: 'file_seq') final int fileSeq,
      final Map<String, String?> errors}) = _$ReportListModelImpl;

  factory _ReportListModel.fromJson(Map<String, dynamic> json) =
      _$ReportListModelImpl.fromJson;

  @override
  @JsonKey(name: 'file_id')
  String get fileId;
  @override
  @JsonKey(name: 'file_display_name')
  String get fileDisplayName;
  @override
  @JsonKey(name: 'rep_module')
  String get module;
  @override
  @JsonKey(name: 'file_type')
  String get fileType;
  @override
  @JsonKey(name: 'file_seq')
  int get fileSeq;
  @override
  Map<String, String?> get errors;
  @override
  @JsonKey(ignore: true)
  _$$ReportListModelImplCopyWith<_$ReportListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

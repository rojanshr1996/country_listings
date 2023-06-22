// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  CountryNameModel get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({CountryNameModel name});

  $CountryNameModelCopyWith<$Res> get name;
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryNameModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryNameModelCopyWith<$Res> get name {
    return $CountryNameModelCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$_CountryModelCopyWith(
          _$_CountryModel value, $Res Function(_$_CountryModel) then) =
      __$$_CountryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryNameModel name});

  @override
  $CountryNameModelCopyWith<$Res> get name;
}

/// @nodoc
class __$$_CountryModelCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$_CountryModel>
    implements _$$_CountryModelCopyWith<$Res> {
  __$$_CountryModelCopyWithImpl(
      _$_CountryModel _value, $Res Function(_$_CountryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CountryModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryNameModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  const _$_CountryModel({required this.name});

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryModelFromJson(json);

  @override
  final CountryNameModel name;

  @override
  String toString() {
    return 'CountryModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      __$$_CountryModelCopyWithImpl<_$_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryModelToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel({required final CountryNameModel name}) =
      _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  CountryNameModel get name;
  @override
  @JsonKey(ignore: true)
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryNameModel _$CountryNameModelFromJson(Map<String, dynamic> json) {
  return _CountryNameModel.fromJson(json);
}

/// @nodoc
mixin _$CountryNameModel {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryNameModelCopyWith<CountryNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryNameModelCopyWith<$Res> {
  factory $CountryNameModelCopyWith(
          CountryNameModel value, $Res Function(CountryNameModel) then) =
      _$CountryNameModelCopyWithImpl<$Res, CountryNameModel>;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$CountryNameModelCopyWithImpl<$Res, $Val extends CountryNameModel>
    implements $CountryNameModelCopyWith<$Res> {
  _$CountryNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryNameModelCopyWith<$Res>
    implements $CountryNameModelCopyWith<$Res> {
  factory _$$_CountryNameModelCopyWith(
          _$_CountryNameModel value, $Res Function(_$_CountryNameModel) then) =
      __$$_CountryNameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$$_CountryNameModelCopyWithImpl<$Res>
    extends _$CountryNameModelCopyWithImpl<$Res, _$_CountryNameModel>
    implements _$$_CountryNameModelCopyWith<$Res> {
  __$$_CountryNameModelCopyWithImpl(
      _$_CountryNameModel _value, $Res Function(_$_CountryNameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_$_CountryNameModel(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryNameModel implements _CountryNameModel {
  const _$_CountryNameModel({required this.common, required this.official});

  factory _$_CountryNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryNameModelFromJson(json);

  @override
  final String common;
  @override
  final String official;

  @override
  String toString() {
    return 'CountryNameModel(common: $common, official: $official)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryNameModel &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryNameModelCopyWith<_$_CountryNameModel> get copyWith =>
      __$$_CountryNameModelCopyWithImpl<_$_CountryNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryNameModelToJson(
      this,
    );
  }
}

abstract class _CountryNameModel implements CountryNameModel {
  const factory _CountryNameModel(
      {required final String common,
      required final String official}) = _$_CountryNameModel;

  factory _CountryNameModel.fromJson(Map<String, dynamic> json) =
      _$_CountryNameModel.fromJson;

  @override
  String get common;
  @override
  String get official;
  @override
  @JsonKey(ignore: true)
  _$$_CountryNameModelCopyWith<_$_CountryNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryEntityModel _$CountryEntityModelFromJson(Map<String, dynamic> json) {
  return _CountryEntityModel.fromJson(json);
}

/// @nodoc
mixin _$CountryEntityModel {
  String get officialName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryEntityModelCopyWith<CountryEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEntityModelCopyWith<$Res> {
  factory $CountryEntityModelCopyWith(
          CountryEntityModel value, $Res Function(CountryEntityModel) then) =
      _$CountryEntityModelCopyWithImpl<$Res, CountryEntityModel>;
  @useResult
  $Res call({String officialName, String name});
}

/// @nodoc
class _$CountryEntityModelCopyWithImpl<$Res, $Val extends CountryEntityModel>
    implements $CountryEntityModelCopyWith<$Res> {
  _$CountryEntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      officialName: null == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryEntityModelCopyWith<$Res>
    implements $CountryEntityModelCopyWith<$Res> {
  factory _$$_CountryEntityModelCopyWith(_$_CountryEntityModel value,
          $Res Function(_$_CountryEntityModel) then) =
      __$$_CountryEntityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String officialName, String name});
}

/// @nodoc
class __$$_CountryEntityModelCopyWithImpl<$Res>
    extends _$CountryEntityModelCopyWithImpl<$Res, _$_CountryEntityModel>
    implements _$$_CountryEntityModelCopyWith<$Res> {
  __$$_CountryEntityModelCopyWithImpl(
      _$_CountryEntityModel _value, $Res Function(_$_CountryEntityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialName = null,
    Object? name = null,
  }) {
    return _then(_$_CountryEntityModel(
      officialName: null == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryEntityModel implements _CountryEntityModel {
  const _$_CountryEntityModel({required this.officialName, required this.name});

  factory _$_CountryEntityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryEntityModelFromJson(json);

  @override
  final String officialName;
  @override
  final String name;

  @override
  String toString() {
    return 'CountryEntityModel(officialName: $officialName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryEntityModel &&
            (identical(other.officialName, officialName) ||
                other.officialName == officialName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, officialName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryEntityModelCopyWith<_$_CountryEntityModel> get copyWith =>
      __$$_CountryEntityModelCopyWithImpl<_$_CountryEntityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryEntityModelToJson(
      this,
    );
  }
}

abstract class _CountryEntityModel implements CountryEntityModel {
  const factory _CountryEntityModel(
      {required final String officialName,
      required final String name}) = _$_CountryEntityModel;

  factory _CountryEntityModel.fromJson(Map<String, dynamic> json) =
      _$_CountryEntityModel.fromJson;

  @override
  String get officialName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CountryEntityModelCopyWith<_$_CountryEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

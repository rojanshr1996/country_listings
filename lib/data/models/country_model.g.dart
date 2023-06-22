// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      name: CountryNameModel.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_CountryNameModel _$$_CountryNameModelFromJson(Map<String, dynamic> json) =>
    _$_CountryNameModel(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$$_CountryNameModelToJson(_$_CountryNameModel instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };

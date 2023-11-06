import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity_model.freezed.dart';
part 'country_entity_model.g.dart';

@freezed
class CountryEntityModel with _$CountryEntityModel {
  const factory CountryEntityModel({
    required String officialName,
    required String name,
  }) = _CountryEntityModel;

  factory CountryEntityModel.fromJson(Map<String, Object?> json) =>
      _$CountryEntityModelFromJson(json);
}

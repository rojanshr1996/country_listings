import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required CountryNameModel name,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, Object?> json) =>
      _$CountryModelFromJson(json);
}

@freezed
class CountryNameModel with _$CountryNameModel {
  const factory CountryNameModel({
    required String common,
    required String official,
  }) = _CountryNameModel;

  factory CountryNameModel.fromJson(Map<String, Object?> json) =>
      _$CountryNameModelFromJson(json);
}

import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:equatable/equatable.dart';

abstract class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object?> get props => [];
}

class FetchCountriesEvent extends CountryEvent {}

class ChangeCountryNameEvent extends CountryEvent {
  final CountryEntityModel countryName;

  const ChangeCountryNameEvent({required this.countryName});

  @override
  List<Object?> get props => [countryName];
}

class FetchStoredNamesEvent extends CountryEvent {}

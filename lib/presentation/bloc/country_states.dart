import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:equatable/equatable.dart';

abstract class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object?> get props => [];
}

class InitialCountryState extends CountryState {}

class LoadingCountryState extends CountryState {}

class LoadedCountryState extends CountryState {
  final List<CountryModel> countries;

  const LoadedCountryState({this.countries = const []});

  @override
  List<Object?> get props => [countries];
}

class UpdatedCountryState extends CountryState {}

class StoredCountryNameState extends CountryState {
  final List<CountryEntityModel> storedCountryNames;

  const StoredCountryNameState({this.storedCountryNames = const []});

  @override
  List<Object?> get props => [storedCountryNames];
}

class ErrorCountryState extends CountryState {
  final Exception message;

  const ErrorCountryState(this.message);

  @override
  List<Object?> get props => [message];
}

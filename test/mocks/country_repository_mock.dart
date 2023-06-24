import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/utils/res/data_state.dart';

CountryNameModel countryData1 = const CountryNameModel(
  common: "Nepal",
  official: "Nepal",
);
CountryNameModel countryData2 = const CountryNameModel(
  common: "India",
  official: "India",
);

List<CountryModel> mockCountryList = [
  CountryModel(name: countryData1),
  CountryModel(name: countryData2),
];

DataSuccess<List<CountryModel>> mockCountryData = DataSuccess(
  isLoading: false,
  data: mockCountryList,
);

// Mocks for updating country name

CountryEntityModel mockCountryName = const CountryEntityModel(officialName: "Nepal", name: "Nepal Country");

DataState<CountryEntityModel?> mockUpdatedCountryName = DataSuccess(
  isLoading: false,
  data: mockCountryName,
);

// Mocks for stored names in local database

List<CountryEntityModel> mockStoredCountryList = [mockCountryName];

DataSuccess<List<CountryEntityModel>> mockStoredCountryData = DataSuccess(
  isLoading: false,
  data: mockStoredCountryList,
);

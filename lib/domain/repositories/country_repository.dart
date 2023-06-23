import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/utils/res/data_state.dart';

abstract class CountryRepository {
  Future<DataState<List<CountryModel>>> fetchAllCountryList();

  Future<DataState<List<CountryEntityModel>>> fetchCountryNames();

  Future<DataState<CountryEntityModel?>> updateCountryName({required CountryEntityModel countryName});
}

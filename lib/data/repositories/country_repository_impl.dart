import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/data/repositories/base_api_repository.dart';
import 'package:country_listings/data/sources/local/local_country_service.dart';
import 'package:country_listings/data/sources/remote/country_services.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/utils/res/data_state.dart';

class CountryRepositoryImpl extends BaseApiRepository
    implements CountryRepository {
  late CountryService _countryService;
  late LocalCountryService _localCountryService;

  CountryRepositoryImpl(
      {required CountryService countryService,
      required LocalCountryService localCountryService}) {
    _localCountryService = localCountryService;
    _countryService = countryService;
  }

  @override
  Future<DataState<List<CountryModel>>> fetchAllCountryList() {
    return getStateOf(
      request: () => _countryService.fetchAllCountryList(),
    );
  }

  @override
  Future<DataState<List<CountryEntityModel>>> fetchCountryNames() {
    return _localCountryService.findAllCountries();
  }

  @override
  Future<DataState<CountryEntityModel?>> updateCountryName(
      {required CountryEntityModel countryName}) {
    return _localCountryService.updateCountry(country: countryName);
  }
}

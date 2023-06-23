import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/data/repositories/base_api_repository.dart';
import 'package:country_listings/data/sources/local/local_country_service.dart';
import 'package:country_listings/data/sources/remote/country_services.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/utils/res/data_state.dart';

class CountryRepositoryImpl extends BaseApiRepository implements CountryRepository {
  final CountryService countryService;
  final LocalCountryService localCountryService;

  CountryRepositoryImpl({required this.countryService, required this.localCountryService});

  @override
  Future<DataState<List<CountryModel>>> fetchAllCountryList() {
    return getStateOf(
      request: () => countryService.fetchAllCountryList(),
    );
  }

  @override
  Future<DataState<List<CountryEntityModel>>> fetchCountryNames() {
    return localCountryService.findAllCountries();
  }

  @override
  Future<DataState<CountryEntityModel?>> updateCountryName({required CountryEntityModel countryName}) {
    return localCountryService.updateCountry(country: countryName);
  }
}

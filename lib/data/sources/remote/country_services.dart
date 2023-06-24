import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/utils/res/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'country_services.g.dart';

@RestApi(baseUrl: Constants.baseUrl, parser: Parser.JsonSerializable)
abstract class CountryService {
  factory CountryService(Dio dio, {String baseUrl}) = _CountryService;

  @GET(Constants.allCountries)
  Future<List<CountryModel>> fetchAllCountryList();
}

import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryBLoc extends Bloc<CountryEvent, CountryState> {
  late final CountryRepository _countryRepo;

  CountryBLoc(this._countryRepo) : super(InitialCountryState()) {
    on<FetchCountriesEvent>((event, emit) async {
      emit(LoadingCountryState());
      try {
        final result = await _countryRepo.fetchAllCountryList();
        emit(LoadedCountryState(countries: result.data!));
      } catch (error) {
        emit(ErrorCountryState(Exception(error)));
      }
    });
  }
}

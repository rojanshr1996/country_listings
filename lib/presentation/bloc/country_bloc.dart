import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  late final CountryRepository _countryRepo;

  CountryBloc(this._countryRepo) : super(InitialCountryState()) {
    on<FetchCountriesEvent>((event, emit) async {
      emit(LoadingCountryState());
      try {
        final result = await _countryRepo.fetchAllCountryList();
        print("THIS IS THE LIST: ${result.error.toString()}");
        emit(LoadedCountryState(countries: result.data ?? []));
      } catch (error) {
        emit(ErrorCountryState(Exception(error)));
      }
    });

    on<ChangeCountryNameEvent>((event, emit) async {
      emit(LoadingCountryState());

      try {
        final result = await _countryRepo.updateCountryName(countryName: event.countryName);
        if (result.data is CountryEntityModel) {
          emit(UpdatedCountryState());
        }
      } catch (error) {
        emit(ErrorCountryState(Exception(error)));
      }
    });

    on<FetchStoredNamesEvent>((event, emit) async {
      emit(LoadingCountryState());
      try {
        final result = await _countryRepo.fetchCountryNames();
        emit(StoredCountryNameState(storedCountryNames: result.data ?? []));
      } catch (error) {
        emit(ErrorCountryState(Exception(error)));
      }
    });
  }
}

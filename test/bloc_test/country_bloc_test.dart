import 'package:bloc_test/bloc_test.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/presentation/bloc/country_bloc.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/country_repository_mock.dart';

class MockCountryRepository extends Mock implements CountryRepository {}

void main() {
  late CountryBloc sut;
  late MockCountryRepository mockCountryRepository;

  setUp(() {
    mockCountryRepository = MockCountryRepository();
    sut = CountryBloc(mockCountryRepository);
  });

  tearDown(() {
    sut.close();
  });

  group("testing country list blocs", () {
    test("Initial status is InitialCountryState()", () {
      expect(sut.state, InitialCountryState());
    });

    blocTest(
      "fetching country list",
      build: () => sut,
      act: (CountryBloc bloc) async {
        bloc.add(FetchCountriesEvent());
        when(() => mockCountryRepository.fetchAllCountryList()).thenAnswer(
          (_) async => mockCountryData,
        );
      },
      expect: () => [
        LoadingCountryState(),
        LoadedCountryState(countries: mockCountryData.data!),
      ],
    );

    blocTest(
      "updating the name of the country",
      build: () => sut,
      act: (CountryBloc bloc) async {
        bloc.add(
          ChangeCountryNameEvent(countryName: mockCountryName),
        );
        when(() => mockCountryRepository.updateCountryName(countryName: mockCountryName)).thenAnswer(
          (_) async => mockUpdatedCountryName,
        );
      },
      expect: () => [
        LoadingCountryState(),
        UpdatedCountryState(),
      ],
    );

    blocTest(
      "fetching updated names of country stored in local database",
      build: () => sut,
      act: (CountryBloc bloc) async {
        bloc.add(FetchStoredNamesEvent());
        when(() => mockCountryRepository.fetchCountryNames()).thenAnswer(
          (_) async => mockStoredCountryData,
        );
      },
      expect: () => [
        LoadingCountryState(),
        StoredCountryNameState(storedCountryNames: mockStoredCountryData.data!),
      ],
    );
  });
}

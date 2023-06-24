import 'package:country_listings/data/repositories/base_api_repository.dart';
import 'package:country_listings/data/repositories/country_repository_impl.dart';
import 'package:country_listings/data/sources/local/local_country_service.dart';
import 'package:country_listings/data/sources/remote/country_services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/country_repository_mock.dart';

class MockCountryService extends Mock implements CountryService {}

class MockLocalCountryService extends Mock implements LocalCountryService {}

class MockBaseApiRepository extends Mock implements BaseApiRepository {}

void main() {
  late MockLocalCountryService local;
  late MockCountryService remote;
  late CountryRepositoryImpl repo;

  setUp(() {
    local = MockLocalCountryService();
    remote = MockCountryService();

    repo = CountryRepositoryImpl(countryService: remote, localCountryService: local);
  });

  group('Check country data fetch from data sources', () {
    test('should return all country list', () async {
      //Arrange
      when(() => remote.fetchAllCountryList()).thenAnswer((_) async => mockCountryList);

      //Act
      final result = await repo.fetchAllCountryList();

      //Assert
      expect(result.data, mockCountryList);
    });

    test('should return a store country name list', () async {
      //Arrange
      when(() => local.findAllCountries()).thenAnswer((_) async => mockStoredCountryData);

      //Act
      final result = await repo.fetchCountryNames();

      //Assert
      expect(result, mockStoredCountryData);
    });

    test('should return a updated country name item', () async {
      //Arrange
      when(() => local.updateCountry(country: mockCountryName)).thenAnswer((_) async => mockUpdatedCountryName);

      //Act
      final result = await repo.updateCountryName(countryName: mockCountryName);

      //Assert
      expect(result, mockUpdatedCountryName);
    });
  });
}

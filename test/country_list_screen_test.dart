import 'package:bloc_test/bloc_test.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/presentation/bloc/country_bloc.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:country_listings/presentation/view/country_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks/country_repository_mock.dart';

class MockCountryBloc extends MockBloc<CountryEvent, CountryState> implements CountryBloc {}

class MockCountryRepository extends Mock implements CountryRepository {}

void main() {
  late MockCountryBloc sut;

  setUp(() {
    sut = MockCountryBloc();
  });

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: BlocProvider<CountryBloc>(
        create: (context) => sut,
        child: widget,
      ),
    );
  }

  group('Country list screen', () {
    testWidgets('Should display loading text during initial State', (WidgetTester tester) async {
      when(() => sut.state).thenReturn(InitialCountryState());

      await tester.pumpWidget(buildTestableWidget(const CountryListScreen()));
      expect(find.byKey(const Key("CountryListLoading")), findsOneWidget);
    });

    testWidgets('Should display loading text when in loading State', (WidgetTester tester) async {
      when(() => sut.state).thenReturn(LoadingCountryState());

      await tester.pumpWidget(buildTestableWidget(const CountryListScreen()));
      expect(find.byKey(const Key("CountryListLoading")), findsOneWidget);
    });

    testWidgets('Should display a ListView widget when data is fetch and is in Loaded State',
        (WidgetTester tester) async {
      when(() => sut.state).thenReturn(LoadedCountryState(countries: mockCountryList));
      await tester.pumpWidget(buildTestableWidget(const CountryListScreen()));
      expect(find.text("Nepal"), findsOneWidget);
      expect(find.text("India"), findsOneWidget);
    });

    testWidgets('Edit Button onTap test', (WidgetTester tester) async {
      when(() => sut.state).thenReturn(LoadedCountryState(countries: mockCountryList));
      await tester.pumpWidget(buildTestableWidget(const CountryListScreen()));

      await tester.tap(find.byKey(Key(mockCountryList.first.name.official)));
      await tester.pump();

      expect(find.byKey(Key(mockCountryList.first.name.official)), findsOneWidget);
    });
  });
}

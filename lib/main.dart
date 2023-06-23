import 'package:country_listings/config/routes/app_router.dart';
import 'package:country_listings/config/routes/routes.dart';
import 'package:country_listings/data/repositories/country_repository_impl.dart';
import 'package:country_listings/data/sources/local/local_country_service.dart';
import 'package:country_listings/data/sources/remote/country_services.dart';
import 'package:country_listings/domain/repositories/country_repository.dart';
import 'package:country_listings/presentation/bloc/country_bloc.dart';
import 'package:country_listings/utils/res/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Dio dio = Dio();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CountryRepository>(
            create: (_) =>
                CountryRepositoryImpl(countryService: CountryService(dio), localCountryService: LocalCountryService()))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CountryBloc(RepositoryProvider.of<CountryRepository>(context))),
        ],
        child: MaterialApp(
          title: Constants.appName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: Routes.countryList,
        ),
      ),
    );
  }
}

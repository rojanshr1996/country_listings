import 'package:country_listings/config/routes/routes.dart';
import 'package:country_listings/presentation/view/country_list_screen.dart';
import 'package:country_listings/presentation/view/updated_country_names_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.countryList:
        return MaterialPageRoute(builder: (_) => const CountryListScreen());

      case Routes.storedCounryNamesList:
        return MaterialPageRoute(builder: (_) => const UpdatedCountryNamesScreen());

      default:
        return errorRoute(settings);
    }
  }

  static Route<dynamic> errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: Center(child: Text('No Route defined for ${settings.name}')),
      ),
    );
  }
}

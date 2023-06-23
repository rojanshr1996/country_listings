import 'package:country_listings/config/routes/routes.dart';
import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:country_listings/data/models/country_model.dart';
import 'package:country_listings/presentation/bloc/country_bloc.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:country_listings/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CountryBloc>(context).add(FetchCountriesEvent());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Utilities.openNamedActivity(context, Routes.storedCounryNamesList);
            },
            child: const Text("Stored Names"),
          )
        ],
      ),
      body: BlocConsumer<CountryBloc, CountryState>(
        buildWhen: (previous, current) => previous != current && current is LoadedCountryState,
        listener: (context, state) {
          if (state is ErrorCountryState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message.toString()),
              ),
            );
          }

          if (state is UpdatedCountryState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Country Name updated and stored successfully"),
              ),
            );
            Utilities.openNamedActivity(context, Routes.storedCounryNamesList);
          }
        },
        builder: (context, state) {
          if (state is InitialCountryState || state is LoadingCountryState) {
            return const Center(child: Text("Loading ..."));
          } else if (state is LoadedCountryState) {
            return ListView.builder(
              itemCount: state.countries.length,
              itemBuilder: (context, index) {
                final country = state.countries[index];
                return ListTile(
                  title: Text(country.name.common),
                  subtitle: Text(country.name.official),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => {
                      _renameCountryDialog(context, country.name),
                    },
                  ),
                );
              },
            );
          } else if (state is ErrorCountryState) {
            return Center(child: Text(state.message.toString()));
          }
          return const SizedBox();
        },
      ),
    );
  }

  Future<void> _renameCountryDialog(BuildContext context, CountryNameModel country) async {
    final TextEditingController controller = TextEditingController(text: country.common);

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Country'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'New Name',
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: const Text('Rename'),
            onPressed: () {
              BlocProvider.of<CountryBloc>(context).add(
                ChangeCountryNameEvent(
                    countryName: CountryEntityModel(
                  name: controller.text.trim(),
                  officialName: country.official,
                )),
              );
              Utilities.closeActivity(context);
            },
          ),
        ],
      ),
    );
  }
}

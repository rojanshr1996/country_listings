import 'package:country_listings/presentation/bloc/country_bloc.dart';
import 'package:country_listings/presentation/bloc/country_events.dart';
import 'package:country_listings/presentation/bloc/country_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdatedCountryNamesScreen extends StatelessWidget {
  const UpdatedCountryNamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CountryBloc>(context).add(FetchStoredNamesEvent());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Updated Country Names'),
        centerTitle: false,
      ),
      body: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          if (state is InitialCountryState || state is LoadingCountryState) {
            return const Center(child: Text("Loading ..."));
          } else if (state is StoredCountryNameState) {
            if (state.storedCountryNames.isEmpty) {
              return const Center(child: Text('No stored names'));
            } else {
              return ListView.builder(
                itemCount: state.storedCountryNames.length,
                itemBuilder: (context, index) {
                  final storedName = state.storedCountryNames[index];
                  return ListTile(
                    title: Text(storedName.name),
                  );
                },
              );
            }
          } else if (state is ErrorCountryState) {
            return Center(child: Text(state.message.toString()));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

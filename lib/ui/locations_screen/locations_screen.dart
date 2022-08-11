import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/locations/bloc_locations.dart';
import 'package:lessons2/bloc/locations/states.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/ui/location_details_screen/location_details_screen.dart';
import 'package:lessons2/ui/locations_screen/widgets/location_list_tile.dart';
import 'package:lessons2/ui/widgets/app_list_view.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';
import 'package:lessons2/ui/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/total_items_label.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 1),
      body: SafeArea(
        child: Column(
          children: [
            SearchField(
              onChanged: (value) {
                BlocProvider.of<LocationsBloc>(context)
                    .add(LocationsEventFilterByName(value));
              },
              labelName: S.of(context).findLocation,
            ),
            const SizedBox(height: 4),
            BlocBuilder<LocationsBloc, LocationsState>(
              builder: (context, state) {
                var totalItemsCount = 0;
                if (state is LocationsStateData) {
                  totalItemsCount = state.data.length;
                }
                return TotalItemsLabel(
                  totalItemsCount: totalItemsCount,
                  callback: () {
                    isListView.value = !isListView.value;
                  },
                  labelName: S.of(context).totalLocations,
                );
              },
            ),
            Expanded(
              child: BlocBuilder<LocationsBloc, LocationsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    data: (data) {
                      return AppListView<LocationListTile>(
                        items: data,
                        callback: (item) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LocationDetailsScreen(
                                  location: item as Location),
                            ),
                          );
                        },
                      );
                    },
                    error: (error) => Text(error),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

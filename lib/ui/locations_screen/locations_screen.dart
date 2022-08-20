import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/locations/bloc_locations.dart';
import 'package:lessons2/bloc/locations/states.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/ui/location_details_screen/location_details_screen.dart';
import 'package:lessons2/ui/locations_screen/widgets/location_list_tile.dart';
import 'package:lessons2/ui/widgets/app_error_button.dart';
import 'package:lessons2/ui/widgets/app_list_view.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';
import 'package:lessons2/ui/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/total_items_label.dart';

part 'widgets/body.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);
  static final controller = TextEditingController();
  static var searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 1),
      body: SafeArea(
        child: Column(
          children: [
            BlocListener<LocationsBloc, LocationsState>(
              listener: (context, state) {
                if (state is LocationsStateData) {
                  searchText = state.searchText;
                }
              },
              child: SearchField(
                controller: controller..text = searchText,
                onChanged: (value) {
                  BlocProvider.of<LocationsBloc>(context)
                      .add(LocationsEventFetch(name: value));
                },
                labelName: S.of(context).findLocation,
              ),
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
                  labelName: S.of(context).totalLocations,
                );
              },
            ),
            Expanded(
              child: BlocBuilder<LocationsBloc, LocationsState>(
                buildWhen: (previous, current) {
                  if (previous is LocationsStateInitial &&
                      current is LocationsStateInitial) {
                    return false;
                  } else if (previous is LocationsStateLoading &&
                      current is LocationsStateLoading) {
                    return false;
                  } else if (previous is LocationsStateData &&
                      current is LocationsStateData) {
                    bool diffLength =
                        previous.data.length != current.data.length;
                    return diffLength || current.searchText.isEmpty;
                  } else if (previous is LocationsStateError &&
                      current is LocationsStateError) {
                    return previous.error != current.error;
                  }
                  return true;
                },
                builder: (context, state) {
                  // print('buildWhen');
                  //buildWhen is tested with typing: c-35
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    data: (data, _, isLoading, isEndOfData, errorMessage) {
                      return Stack(
                        children: [
                          Body(
                            data: data,
                            searchText: searchText,
                            isEndOfData: isEndOfData,
                          ),
                          if (isLoading)
                            const Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: LinearProgressIndicator(),
                            )
                        ],
                      );
                    },
                    error: (error) => AppErrorButton(
                      errorMessage: error,
                      callback: () {
                        BlocProvider.of<LocationsBloc>(context)
                            .add(LocationsEventFetch(name: ''));
                      },
                    ),
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

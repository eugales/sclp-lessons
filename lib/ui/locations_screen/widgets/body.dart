part of '../locations_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.data,
    required this.searchText,
  }) : super(key: key);

  final List<Location> data;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<LocationsBloc>(context)
            .add(LocationsEventFetch(name: searchText));
      },
      child: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollNotification) {
            if (notification.metrics.extentAfter == 0) {
              BlocProvider.of<LocationsBloc>(context)
                  .add(LocationsEventNextPage(name: searchText));
            }
          }
          return false;
        },
        child: AppListView<LocationListTile>(
          items: data,
          callback: (item) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    LocationDetailsScreen(location: item as Location),
              ),
            );
          },
        ),
      ),
    );
  }
}

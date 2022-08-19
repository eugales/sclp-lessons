part of '../episodes_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.data,
    required this.isEndOfData,
  }) : super(key: key);

  final List<Episode> data;
  final bool isEndOfData;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<EpisodesBloc>(context).add(const EpisodesEventFetch());
      },
      child: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollNotification) {
            if (!isEndOfData && notification.metrics.extentAfter == 0) {
              BlocProvider.of<EpisodesBloc>(context)
                  .add(const EpisodesEventNextPage());
            }
          }
          return false;
        },
        child: AppListView<EpisodeListTile>(
          items: data,
          callback: (item) {},
        ),
      ),
    );
  }
}

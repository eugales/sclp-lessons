part of '../characters_screen.dart';

class Body extends StatelessWidget {
  const Body(
      {Key? key,
      required this.data,
      required this.searchText,
      required this.isEndOfData,
      required this.isListView})
      : super(key: key);

  final List<Character> data;
  final String searchText;
  final bool isEndOfData;
  final ValueListenable<bool> isListView;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<CharactersBloc>(context)
            .add(CharactersEventFetch(name: searchText));
      },
      child: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollNotification) {
            if (!isEndOfData && notification.metrics.extentAfter == 0) {
              BlocProvider.of<CharactersBloc>(context)
                  .add(CharactersEventNextPage(name: searchText));
            }
          }
          return false;
        },
        child: data.isEmpty
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(
                    S.of(context).charactersListIsEmpty,
                  ))
                ],
              )
            : ValueListenableBuilder<bool>(
                valueListenable: isListView,
                builder: (context, isListViewMode, _) {
                  return isListViewMode
                      ? AppListView<CharacterListTile>(
                          items: data,
                          callback: (item) {},
                        )
                      : _GridView(data);
                },
              ),
      ),
    );
  }
}

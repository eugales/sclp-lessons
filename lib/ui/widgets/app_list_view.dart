import 'package:flutter/material.dart';
import 'package:lessons2/models/episodes.dart';
import 'package:lessons2/models/item.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/episodes_screen/widgets/episode_list_tile.dart';
import 'package:lessons2/ui/locations_screen/widgets/location_list_tile.dart';

class AppListView<T> extends StatelessWidget {
  const AppListView({super.key, required this.items, required this.callback,  this.isListBordered = false});

  final List<Item> items;
  final void Function(Item? item) callback;
  final bool isListBordered;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => isListBordered ? Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        color: Colors.black38,
        height: 1,
      ) : const SizedBox(height: 8),
      itemBuilder: (context, index) {
        if (T == CharacterListTile) {
          final item = items[index];
          return InkWell(
            onTap: () => callback(item),
            child: CharacterListTile(
              item as Character,
              key: ObjectKey(item),
              size: MediaQuery.of(context).size,
            ),
          );
        }

        if (T == LocationListTile) {
          final item = items[index];
          return InkWell(
            onTap: () => callback(item),
            child: LocationListTile(
              location: item as Location,
              key: ObjectKey(item),
            ),
          );
        }

        if (T == EpisodeListTile) {
          final item = items[index];
          return InkWell(
            onTap: () => callback(item),
            child: EpisodeListTile(
              episode: item as Episode,
              key: ObjectKey(item),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

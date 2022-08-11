import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/characters/bloc_characters.dart';
import 'package:lessons2/bloc/characters/states.dart';
import 'package:lessons2/generated/l10n.dart';

import 'package:lessons2/models/character.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/widgets/app_list_view.dart';
import 'package:lessons2/ui/widgets/total_items_label.dart';
import 'package:lessons2/ui/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';

part 'widgets/_grid_view.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 0),
        body: SafeArea(
          child: Column(
            children: [
              SearchField(
                onChanged: (value) {
                  BlocProvider.of<BlocCharacters>(context).add(
                    EventCharactersFilterByName(value),
                  );
                },
                labelName: S.of(context).findCharacter,
              ),
              const SizedBox(height: 4),
              BlocBuilder<BlocCharacters, StateBlocCharacters>(
                builder: (context, state) {
                  var charactersTotal = 0;
                  if (state is StateCharactersData) {
                    charactersTotal = state.data.length;
                  }

                  return TotalItemsLabel(
                    callback: () {
                      isListView.value = !isListView.value;
                    },
                    isListView: isListView,
                    totalItemsCount: charactersTotal,
                    labelName: S.of(context).totalCharacters,
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<BlocCharacters, StateBlocCharacters>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      data: (data) {
                        if (data.isEmpty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  child: Text(
                                S.of(context).charactersListIsEmpty,
                              ))
                            ],
                          );
                        } else {
                          return ValueListenableBuilder<bool>(
                            valueListenable: isListView,
                            builder: (context, isListViewMode, _) {
                              return isListViewMode
                                  ? AppListView<CharacterListTile>(
                                      items: data,
                                      callback: (item) {},
                                    )
                                  : _GridView(data);
                            },
                          );
                        }
                      },
                      error: (error) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(error),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}

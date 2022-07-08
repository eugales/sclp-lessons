import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/characters/bloc_characters.dart';
import 'package:lessons2/generated/l10n.dart';

import 'package:lessons2/models/character.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/total_characters_label.dart';
import 'package:lessons2/ui/characters_screen/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';

part 'widgets/_grid_view.dart';
part 'widgets/_list_view.dart';

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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: SearchField(
                  onChanged: (value) {
                    BlocProvider.of<BlocCharacters>(context)
                        .add(EventCharactersFilterByName(value));
                  },
                ),
              ),
              const SizedBox(height: 4),
              BlocBuilder<BlocCharacters, StateBlocCharacters>(
                builder: (context, state) {
                  var charactersTotal = 0;
                  if (state is StateCharactersData) {
                    charactersTotal = state.data.length;
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TotalCharactersLabel(
                      callback: () {
                        isListView.value = !isListView.value;
                      },
                      isListView: isListView,
                      totalCharactersCount: charactersTotal,
                    ),
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<BlocCharacters, StateBlocCharacters>(
                  builder: (context, state) {
                    if (state is StateCharactersLoading) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [CircularProgressIndicator()],
                      );
                    }

                    if (state is StateCharactersError) {
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(state.error),
                          )
                        ],
                      );
                    }

                    if (state is StateCharactersData) {
                      if (state.data.isEmpty) {
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
                                ? _ListView(state.data)
                                : _GridView(state.data);
                          },
                        );
                      }
                    }

                    return const SizedBox.shrink();
                  },
                ),
              )
            ],
          ),
        ));
  }
}

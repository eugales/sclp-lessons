import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/characters/bloc_characters.dart';
import 'package:lessons2/bloc/characters/states.dart';
import 'package:lessons2/generated/l10n.dart';

import 'package:lessons2/models/character.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/widgets/app_error_button.dart';
import 'package:lessons2/ui/widgets/app_list_view.dart';
import 'package:lessons2/ui/widgets/total_items_label.dart';
import 'package:lessons2/ui/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';

part 'widgets/_grid_view.dart';
part 'widgets/body.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  static final controller = TextEditingController();
  static var searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 0),
      body: SafeArea(
        child: Column(
          children: [
            BlocListener<CharactersBloc, CharactersState>(
              listener: (context, state) {
                if (state is CharactersStateData) {
                  searchText = state.searchText;
                }
              },
              child: SearchField(
                controller: controller..text = searchText,
                onChanged: (value) {
                  BlocProvider.of<CharactersBloc>(context).add(
                    CharactersEventFetch(name: value),
                  );
                },
                labelName: S.of(context).findCharacter,
              ),
            ),
            const SizedBox(height: 4),
            BlocBuilder<CharactersBloc, CharactersState>(
              buildWhen: (previous, current) {
                if (previous is CharactersStateInitial &&
                    current is CharactersStateInitial) {
                  return false;
                } else if (previous is CharactersStateLoading &&
                    current is CharactersStateLoading) {
                  return false;
                } else if (previous is CharactersStateData &&
                    current is CharactersStateData) {
                  bool diffLength = previous.data.length != current.data.length;
                  return diffLength || current.searchText.isEmpty;
                } else if (previous is CharactersStateError &&
                    current is CharactersStateError) {
                  return previous.error != current.error;
                }
                return true;
              },
              builder: (context, state) {
                var charactersTotal = 0;
                if (state is CharactersStateData) {
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
              child: BlocBuilder<CharactersBloc, CharactersState>(
                builder: (context, state) {
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
                            isListView: isListView,
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
                    error: (error, searchText) => AppErrorButton(
                      errorMessage: error,
                      callback: () {
                        BlocProvider.of<CharactersBloc>(context)
                            .add(CharactersEventFetch(name: searchText));
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

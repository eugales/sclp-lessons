import 'package:flutter/material.dart';
import 'package:lessons2/generated/l10n.dart';

import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/repo_characters.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/characters_list_vmodel.dart';
import 'package:lessons2/ui/characters_screen/widgets/total_characters_label.dart';
import 'package:lessons2/ui/characters_screen/widgets/search_field.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';
import 'package:provider/provider.dart';

part 'widgets/_grid_view.dart';
part 'widgets/_list_view.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 0),
      body: ChangeNotifierProvider(
        create: (context) => CharactersListVModel(
          repo: Provider.of<RepoCharacters>(context, listen: false),
        ),
        builder: (context, _) {
          final characterVModel = context.watch<CharactersListVModel>();
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: SearchField(
                    onChanged: (value) {
                      Provider.of<CharactersListVModel>(context, listen: false)
                          .filter(value.toLowerCase());
                    },
                    controller: _searchController,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TotalCharactersLabel(
                    callback: () {
                      Provider.of<CharactersListVModel>(context, listen: false)
                          .switchView();
                    },
                    isListView: characterVModel.isListView,
                    totalCharactersCount: characterVModel.filteredList.length,
                  ),
                ),
                Expanded(
                  child: Consumer<CharactersListVModel>(
                    builder: (context, vmodel, child) {
                      if (vmodel.isLoading) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [CircularProgressIndicator()],
                        );
                      }

                      if (vmodel.errorMessage != null) {
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(vmodel.errorMessage!),
                            )
                          ],
                        );
                      }

                      if (vmodel.filteredList.isEmpty) {
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                                child: Text(
                              S.of(context).charactersListIsEmpty,
                            ))
                          ],
                        );
                      }

                      return vmodel.isListView
                          ? _ListView(vmodel.filteredList)
                          : _GridView(vmodel.filteredList);
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

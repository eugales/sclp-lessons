import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lessons2/constants/app_colors.dart';

import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/stub.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/search_field.dart';

part 'widgets/_grid_view.dart';
part 'widgets/_list_view.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final _searchController = TextEditingController();
  final List<Character> _characters = Stub.stubCharacters;
  var isListView = true;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        // elevation: 0,
        toolbarHeight: 100,
        title: Column(
          children: [
            SearchField(controller: _searchController),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${S.of(context).totalCharacters}: ${_characters.length}"
                      .toUpperCase(),
                  style: AppStyles.s10w500.copyWith(
                    color: AppColors.grey3,
                    letterSpacing: 1.5,
                  ),
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    return setState(() {
                      isListView = !isListView;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: isListView
                        ? const Icon(
                            Icons.list,
                            color: AppColors.grey3,
                          )
                        : const Icon(
                            Icons.grid_view,
                            color: AppColors.grey3,
                          ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: isListView
          ? _ListView(_characters)
          : _GridView(_characters),
    );
  }
}

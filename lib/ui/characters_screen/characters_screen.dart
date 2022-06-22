import 'package:flutter/material.dart';

import 'package:lessons2/models/stub.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_grid_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/character_list_tile.dart';
import 'package:lessons2/ui/characters_screen/widgets/total_characters_label.dart';
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
  var _isListView = true;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBarHeight = MediaQuery.of(context).size.height * 0.13;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        // key: widget.key,
        elevation: 0,
        toolbarHeight: appBarHeight,
        title: Column(
          children: [
            SearchField(
              controller: _searchController,
            ),
            const SizedBox(height: 4),
            TotalCharactersLabel(
              callback: _turnListOrGrid,
              isListView: _isListView,
              totalCharactersCount: _characters.length,
            )
          ],
        ),
      ),
      body: _isListView ? _ListView(_characters) : _GridView(_characters),
    );
  }

  _turnListOrGrid() {
    setState(() {
      _isListView = !_isListView;
    });
  }
}

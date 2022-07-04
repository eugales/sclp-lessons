import 'package:flutter/material.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/repo_characters.dart';

class CharactersListVModel with ChangeNotifier {
  CharactersListVModel({required this.repo}){
    init();
  }

  late List<Character> filteredList = <Character>[];
  var isListView = true;
  var isLoading = true;
  String? errorMessage;
  final RepoCharacters repo;

  var _charactersList = <Character>[];

  void init() {
    repo.readCharacters().then((result) {
      errorMessage = result.errorMessage;
      _charactersList = result.charactersList ?? <Character>[];
      filteredList = _charactersList;
      isLoading = false;
      notifyListeners();
    });
  }

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }

  void filter(String query) {
    filteredList = _charactersList.where((character) {
      return character.name?.toLowerCase().contains(query) ?? false;
    }).toList();
    notifyListeners();
  }
}

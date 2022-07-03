import 'package:flutter/material.dart';
import 'package:lessons2/models/character.dart';

class CharactersListVModel with ChangeNotifier {
  late List<Character> filteredList = _charactersList;
  var isListView = true;

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }

  void filter(String query) {
    filteredList = _charactersList.where((character) {
      return character.fullName.toLowerCase().contains(query);
    }).toList();
    notifyListeners();
  }

  final _charactersList = [
    ..._list,
    ..._list,
  ];
}

final _list = [
  Character(
    firstName: 'Рик',
    lastName: 'Cанчез',
    avatar: null,
    kind: 'human',
    sex: 'male',
    status: false,
  ),
  Character(
    firstName: 'Директор',
    lastName: 'Агентства',
    avatar: 'https://via.placeholder.com/74',
    kind: 'human',
    sex: 'male',
    status: true,
  ),
  Character(
    firstName: 'Морти',
    lastName: 'Смит',
    avatar: '',
    kind: 'human',
    sex: 'male',
    status: true,
  ),
  Character(
    firstName: 'Саммер',
    lastName: 'Смит',
    avatar: '',
    kind: 'human',
    sex: 'male',
    status: true,
  ),
  Character(
    firstName: 'Альберт',
    lastName: 'Эйнштейн',
    avatar: '',
    kind: 'human',
    sex: 'male',
    status: true,
  ),
  Character(
    firstName: 'Алан',
    lastName: 'Райлс',
    avatar: '',
    kind: 'human',
    sex: 'male',
    status: true,
  ),
];

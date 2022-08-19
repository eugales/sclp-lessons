import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_assets.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/ui/characters_screen/characters_screen.dart';
import 'package:lessons2/ui/episodes_screen/episodes_screen.dart';
import 'package:lessons2/ui/locations_screen/locations_screen.dart';
import 'package:lessons2/ui/settings_screen.dart';

class AppNavigation {
  int currentIndex;
  String assetName;
  String label;
  Widget widget;

  AppNavigation({
    required this.currentIndex,
    required this.assetName,
    required this.label,
    required this.widget,
  });

  factory AppNavigation.specificInstance(currentIndex) =>
      navigations.firstWhere((nav) => nav.currentIndex == currentIndex);

  static final List<AppNavigation> navigations = <AppNavigation>[
    AppNavigation(
      currentIndex: 0,
      assetName: AppAssets.svg.characters,
      label: S.current.characters,
      widget: const CharactersScreen(),
    ),
    AppNavigation(
      currentIndex: 1,
      assetName: AppAssets.svg.location,
      label: S.current.location,
      widget: const LocationsScreen(),
    ),
    AppNavigation(
      currentIndex: 2,
      assetName: AppAssets.svg.episode,
      label: S.current.episodes,
      widget: const EpisodesScreen(),
    ),
    AppNavigation(
      currentIndex: 3,
      assetName: AppAssets.svg.settings,
      label: S.current.settings,
      widget: const SettingsScreen(),
    )
  ];
}

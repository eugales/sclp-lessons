import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessons2/constants/app_assets.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/ui/characters_screen/characters_screen.dart';
import 'package:lessons2/ui/settings_screen.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primary,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.characters,
            color: currentIndex == 0
                ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                : null,
          ),
          label: S.of(context).characters,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.settings,
            color: currentIndex == 1
                ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                : null,
          ),
          label: S.of(context).settings,
        ),
      ],
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const CharactersScreen()),
              (route) => false,
            );
            break;
          case 1:
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const SettingsScreen()),
              (route) => false,
            );
            break;
          default:
            break;
        }
      },
    );
  }

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        });
  }
}

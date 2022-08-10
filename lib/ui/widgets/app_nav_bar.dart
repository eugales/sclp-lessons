import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/support/app_navigation.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primary,
      items: AppNavigation.navigations.map((nav) {
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            nav.assetName,
            color: currentIndex == nav.currentIndex
                ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                : null,
          ),
          label: nav.label,
        );
      }).toList(),
      onTap: (currentIndex) {
        Navigator.of(context).pushAndRemoveUntil(
          _createRoute(AppNavigation.specificInstance(currentIndex).widget),
          (route) => false,
        );
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

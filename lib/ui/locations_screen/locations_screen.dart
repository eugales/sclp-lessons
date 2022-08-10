import 'package:flutter/material.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'LocationsScreen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: AppNavBar(currentIndex: 1),
    );
  }
}

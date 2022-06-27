import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lessons2/constants/app_assets.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/ui/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final nextRoute = const LoginScreen();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: AppColors.dark,
          statusBarIconBrightness: Brightness.dark),
    );
    Future.delayed(
      const Duration(seconds: 2),
    ).whenComplete(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => nextRoute),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.light,
        statusBarBrightness: Brightness.light,
      ),
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AppAssets.images.splashBackground,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              const SizedBox(height: 54),
              Expanded(child: Image.asset(AppAssets.images.logo)),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: Image.asset(AppAssets.images.morty)),
                    Expanded(child: Image.asset(AppAssets.images.rick)),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

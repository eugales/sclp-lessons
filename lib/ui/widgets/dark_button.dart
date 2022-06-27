import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class DarkButton extends StatelessWidget {
  const DarkButton(this.text, {Key? key, required this.onTap})
      : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      color: AppColors.loginButton,
      surfaceTintColor: Colors.black,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 48,
          width: double.maxFinite,
          child: Text(
            text,
            style: AppStyles.s16w400.copyWith(
              letterSpacing: 0.15,
            ),
          ),
        ),
      ),
    );
  }
}

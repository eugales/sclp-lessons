import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton._internal(
      this.text, this.onTap, this.backgroundColor, this.textColor);

  factory AppButton.light(text, {required void Function() onTap}) {
    Color backgroundColor = AppColors.light;
    Color textColor = AppColors.loginButton;
    return AppButton._internal(text, onTap, backgroundColor, textColor);
  }

  factory AppButton.dark(text, {required void Function() onTap}) {
    Color backgroundColor = AppColors.loginButton;
    Color textColor = AppColors.light;
    return AppButton._internal(text, onTap, backgroundColor, textColor);
  }

  final void Function() onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: Colors.transparent),
      ),
      color: backgroundColor,
      // surfaceTintColor: Colors.black,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 48,
          width: double.maxFinite,
          child: Text(
            text,
            style: AppStyles.s16w400
                .copyWith(letterSpacing: 0.15, color: textColor),
          ),
        ),
      ),
    );
  }
}

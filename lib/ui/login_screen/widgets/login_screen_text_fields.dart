import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessons2/constants/app_assets.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class LoginScreenTextFields extends StatelessWidget {
  const LoginScreenTextFields._internal(
    this.labelText,
    this.onSaved,
    this.validator,
    this.maxLength,
    this.prefixIcon,
    this.sufix,
    this.obscureText,
  );

  factory LoginScreenTextFields.login(
    String labelText, {
    required void Function(String?) onSaved,
    required String? Function(String?) validator,
  }) {
    Widget prefix = Padding(
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset(AppAssets.svg.account),
    );
    return LoginScreenTextFields._internal(
        labelText, onSaved, validator, 8, prefix, null, false);
  }

  factory LoginScreenTextFields.password(
    String labelText, {
    required void Function(String?) onSaved,
    required String? Function(String?) validator,
    required bool obscureText,
    required Widget? suffix,
  }) {
    Widget prefix = Padding(
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset(AppAssets.svg.password),
    );
    return LoginScreenTextFields._internal(
        labelText, onSaved, validator, 16, prefix, suffix, obscureText);
  }

  final String? Function(String?)? validator;
  final String labelText;
  final int? maxLength;
  final bool obscureText;
  final void Function(String?) onSaved;
  final Widget? prefixIcon;
  final Widget? sufix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 16,
      validator: validator,
      onSaved: onSaved,
      style: AppStyles.s16w400,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        counterText: "",
        filled: true,
        fillColor: AppColors.loginFieldBackground,
        prefixIcon: prefixIcon,
        suffixIcon: sufix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        label: Text(
          labelText,
          style: AppStyles.s16w400.copyWith(
            letterSpacing: 0.5,
            color: AppColors.loginFieldLabel,
          ),
        ),
      ),
    );
  }
}

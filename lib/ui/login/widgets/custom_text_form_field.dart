import 'package:flutter/material.dart';

import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
    {
    Key? key,
    this.onSaved,
    required this.labelText,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.prefixIcon,
    this.sufix,
    this.obscureText = false,
  }) : super(key: key);

  final void Function(String?)? onSaved;
  final String labelText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? sufix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 16,
      // validator: _loginValidator,
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

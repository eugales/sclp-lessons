import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key, required this.controller}) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.s16w400,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grey1,
        contentPadding: EdgeInsets.zero,
        prefixIcon: const Icon(Icons.search, color: AppColors.grey4),
        suffixIcon: Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: AppColors.grey2),
            ),
          ),
          child: GestureDetector(
            child: const Icon(
              Icons.filter_alt,
              color: AppColors.grey4,
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27),
          borderSide: BorderSide.none,
        ),
        label: Text(
          S.of(context).findCharacter,
          style: AppStyles.s16w400.copyWith(color: AppColors.grey2),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}

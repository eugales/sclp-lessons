import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.s16w400,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchFieldBackground,
        contentPadding: EdgeInsets.zero,
        prefixIcon:
            const Icon(Icons.search, color: AppColors.searchFieldPrimary),
        suffixIcon: Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: AppColors.searchFieldSecondary),
            ),
          ),
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.filter_alt,
              color: AppColors.searchFieldPrimary,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27),
          borderSide: BorderSide.none,
        ),
        label: Text(
          S.of(context).findCharacter,
          style: AppStyles.s16w400.copyWith(color: AppColors.searchFieldText),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}

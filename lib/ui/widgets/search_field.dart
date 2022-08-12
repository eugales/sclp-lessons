import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.onChanged,
    required this.labelName,
    required this.controller,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final String labelName;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: AppStyles.s16w400,
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
            labelName,
            style: AppStyles.s16w400.copyWith(color: AppColors.searchFieldText),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}

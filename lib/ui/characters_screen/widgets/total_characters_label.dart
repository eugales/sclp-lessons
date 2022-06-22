import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';

class TotalCharactersLabel extends StatelessWidget {
  const TotalCharactersLabel({
    Key? key,
    required this.totalCharactersCount,
    required this.isListView,
    required this.callback,
  }) : super(key: key);

  final int totalCharactersCount;
  final bool isListView;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${S.of(context).totalCharacters}: $totalCharactersCount"
              .toUpperCase(),
          style: AppStyles.s10w500.copyWith(
            color: AppColors.secondaryDark,
            letterSpacing: 1.5,
          ),
        ),
        InkWell(
          onTap: () {
            callback();
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: isListView
                ? const Icon(
                    Icons.list,
                    color: AppColors.secondaryDark,
                  )
                : const Icon(
                    Icons.grid_view,
                    color: AppColors.secondaryDark,
                  ),
          ),
        )
      ],
    );
  }
}

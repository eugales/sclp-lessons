import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class TotalItemsLabel extends StatelessWidget {
  const TotalItemsLabel({
    Key? key,
    required this.totalItemsCount,
    this.isListView,
    this.callback,
    required this.labelName,
  }) : super(key: key);

  final int totalItemsCount;
  final ValueNotifier<bool>? isListView;
  final VoidCallback? callback;
  final String labelName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "$labelName: $totalItemsCount".toUpperCase(),
              style: AppStyles.s10w500.copyWith(
                color: AppColors.secondaryDark,
                letterSpacing: 1.5,
              ),
            ),
          ),
          if (isListView != null)
            InkWell(
              onTap: callback,
              child: ValueListenableBuilder<bool>(
                  valueListenable: isListView!,
                  builder: (context, isListViewMode, _) {
                    return isListViewMode
                        ? const Icon(
                            Icons.list,
                            color: AppColors.secondaryDark,
                          )
                        : const Icon(
                            Icons.grid_view,
                            color: AppColors.secondaryDark,
                          );
                  }),
            )
        ],
      ),
    );
  }
}

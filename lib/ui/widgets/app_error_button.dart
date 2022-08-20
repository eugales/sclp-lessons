import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';

class AppErrorButton extends StatelessWidget {
  const AppErrorButton({
    Key? key,
    required this.errorMessage,
    required this.callback,
  }) : super(key: key);

  final String errorMessage;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(errorMessage, style: AppStyles.s16w500),
          OutlinedButton(
              onPressed: callback,
              child: const Icon(
                Icons.refresh,
                color: AppColors.loginButton,
              ))
        ],
      ),
    );
  }
}

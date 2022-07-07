import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/ui/widgets/app_button.dart';

class LoginScreenAlertDialog extends StatelessWidget {
  const LoginScreenAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(28),
      titlePadding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
      actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
      title: Text(S.of(context).error,
          style: AppStyles.s20w500.copyWith(letterSpacing: 0.15)),
      content: Text(
        S.of(context).typedWrongLoginAndPassword,
        style: AppStyles.s14w400.copyWith(letterSpacing: 0.25),
      ),
      actions: [
        AppButton.light(
          S.of(context).ok,
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}

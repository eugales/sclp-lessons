import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_assets.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/ui/characters_screen/characters_screen.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/ui/login/widgets/login_screen_alert_dialog.dart';
import 'package:lessons2/ui/login/widgets/login_screen_text_fields.dart';
import 'package:lessons2/ui/widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordObscured = true;
  final _nextRoute = const CharactersScreen();

  String? _login;
  String? _password;

  String? _loginValidator(String? value) {
    if (value == null || value.isEmpty || value.length < 3) {
      return S.of(context).inputErrorLoginIsShort;
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty || value.length < 8) {
      return S.of(context).inputErrorPasswordIsShort;
    }
    return null;
  }

  void _onLoginPressed() {
    FocusScope.of(context).unfocus();

    final isValidated = _formKey.currentState?.validate() ?? false;

    if (!isValidated) return;

    _formKey.currentState?.save();

    if (_login == 'qwerty' && _password == '123456ab') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => _nextRoute,
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const LoginScreenAlertDialog();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 48),
              Center(child: Image.asset(AppAssets.images.logo)),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).login,
                      style: AppStyles.s14w400.copyWith(
                        letterSpacing: 0.25,
                        color: AppColors.loginLabel,
                      ),
                    ),
                    const SizedBox(height: 8),
                    LoginScreenTextFields.login(
                      S.of(context).login,
                      onSaved: (value) => _login = value,
                      validator: _loginValidator,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      S.of(context).password,
                      style: AppStyles.s14w400.copyWith(
                        letterSpacing: 0.25,
                        color: AppColors.loginLabel,
                      ),
                    ),
                    const SizedBox(height: 8),
                    LoginScreenTextFields.password(
                      S.of(context).password,
                      onSaved: (value) => _password = value,
                      validator: _passwordValidator,
                      obscureText: _isPasswordObscured,
                      suffix: InkWell(
                        child: _isPasswordObscured
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: Color(0xFF8E90A6),
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xFF8E90A6),
                              ),
                        onTap: () {
                          setState(() {
                            _isPasswordObscured = !_isPasswordObscured;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              AppButton.dark(
                S.of(context).signIn,
                onTap: _onLoginPressed,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${S.of(context).dontHaveAccount}?",
                    style: const TextStyle(color: AppColors.dontHaveAccount),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).createAccount,
                      style: const TextStyle(
                        color: AppColors.dontHaveAccountCreate,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

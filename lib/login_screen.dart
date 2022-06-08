import 'package:flutter/material.dart';
import 'package:lessons2/home_screen.dart';
import 'generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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

    if (_loginController.text == 'qwerty' &&
        _passwordController.text == '123456ab') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(S.of(context).tryAgain),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(S.of(context).close),
              )
            ],
          );
        },
      );
    }
  }

  void _onValueChanged(value) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).auth),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).inputLoginAndPassword,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: _loginController,
                      maxLength: 8,
                      validator: _loginValidator,
                      onChanged: _onValueChanged,
                      decoration: InputDecoration(
                        label: Text(S.of(context).login),
                        counter: Text('${_loginController.text.length}/8'),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      maxLength: 16,
                      validator: _passwordValidator,
                      onChanged: _onValueChanged,
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text(S.of(context).password),
                          counter:
                              Text('${_passwordController.text.length}/16')),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _onLoginPressed,
                    child: Text(S.of(context).signIn),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lessons2/home_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String? _loginValidator(String? value) {
    if (value == null || value.isEmpty || value.length < 3) {
      return 'Логин должен содержать не менее 3 символов';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty || value.length < 8) {
      return 'Пароль должен содержать не менее 8 символов';
    }
    return null;
  }

  void _onLoginPressed() {
    FocusScope.of(context).unfocus();

    final isValidated = formKey.currentState?.validate() ?? false;

    if (!isValidated) return;

    formKey.currentState?.save();

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
            title: const Text('Попробуйте снова'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Закрыть'),
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
        title: const Text('Авторизация'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Введите логин и пароль',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: _loginController,
                      maxLength: 8,
                      validator: _loginValidator,
                      onChanged: _onValueChanged,
                      decoration: InputDecoration(
                        label: const Text('Логин'),
                        counter: Text(
                            '${_loginController.text.length}/8'),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      maxLength: 16,
                      validator: _passwordValidator,
                      onChanged: _onValueChanged,
                      obscureText: true,
                      decoration: InputDecoration(
                          label: const Text('Пароль'),
                          counter: Text(
                              '${_passwordController.text.length}/16')),
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
                    child: const Text('Вход'),
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

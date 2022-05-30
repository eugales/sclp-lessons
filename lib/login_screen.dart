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

  var _loginCounter = 0;
  var _passwordCounter = 0;

  void _loginCounterChanged(value) {
    setState(() {
      _loginCounter = value.length;
    });
  }

  void _passwordCounterChanged(value) {
    setState(() {
      _passwordCounter = value.length;
    });
  }

  String? _loginErrorText;
  String? _passwordErrorText;

  void _loginErrorValidator() {
    if (_loginCounter < 3) {
      _loginErrorText = 'Логин должен содержать не менее 3 символов';
    } else {
      _loginErrorText = null;
    }
    // setState(() {});
  }

  void _passwordErrorValidator() {
    if (_passwordCounter < 8) {
      _passwordErrorText = 'Пароль должен содержать не менее 8 символов';
    } else {
      _passwordErrorText = null;
    }
    // setState(() {});
  }

  void _onLoginPressed() {
    FocusScope.of(context).unfocus();
    _loginErrorValidator();
    _passwordErrorValidator();
    if (_loginErrorText != null || _passwordErrorText != null) return;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
        child: Form(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'Введите логин и пароль',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                          controller: _loginController,
                          onChanged: _loginCounterChanged,
                          maxLength: 8,
                          decoration: InputDecoration(
                            label: const Text('Логин'),
                            errorText: _loginErrorText,
                            counter: Text('$_loginCounter/8'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                          controller: _passwordController,
                          onChanged: _passwordCounterChanged,
                          maxLength: 16,
                          obscureText: true,
                          decoration: InputDecoration(
                              label: const Text('Пароль'),
                              errorText: _passwordErrorText,
                              counter: Text('$_passwordCounter/16')),
                        ),
                      ],
                    ),
                  ],
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lessons2/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _languageChange(value) {
    switch (value) {
      case 'ru':
        S.load(const Locale('ru', 'RU'));
        break;
      default:
        S.load(const Locale('en', 'EN'));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).language),
                DropdownButton(
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(S.of(context).english),
                    ),
                    DropdownMenuItem(
                      value: 'ru',
                      child: Text(S.of(context).russian),
                    )
                  ],
                  onChanged: _languageChange,
                )
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          S.of(context).counterValue,
                        ),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('-'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

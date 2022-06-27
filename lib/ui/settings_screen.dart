import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final dropdowns = [
    DropdownMenuItem(
      value: 'ru_RU',
      child: Text(S.current.russian, style: AppStyles.s12w400),
    ),
    DropdownMenuItem(
      value: 'en_EN',
      child: Text(S.current.english, style: AppStyles.s12w400),
    ),
  ];

  String? _language;

  @override
  void initState() {
    _language = Intl.getCurrentLocale().characters.string;
    super.initState();
  }

  void _languageChange(value) {
    switch (value) {
      case 'ru_RU':
        S.load(const Locale('ru', 'RU'));
        _language = value;
        break;
      default:
        S.load(const Locale('en', 'EN'));
        _language = value;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${S.of(context).language}: ", style: AppStyles.s14w400  ),
                DropdownButton(
                  value: _language,
                  items: dropdowns,
                  onChanged: _languageChange,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 1),
    );
  }
}

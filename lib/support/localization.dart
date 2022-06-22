import 'package:lessons2/generated/l10n.dart';

class Localization {
  static String statusLabel(bool status) {
    return status ? S.current.alive : S.current.dead;
  }

  static String kindLabel(String? kind) {
    if (kind == 'human') return S.current.human;
    return '';
  }

  static String sexLabel(String? sex) {
    if (sex == 'male') return S.current.male;
    if (sex == 'female') return S.current.female;
    return '';
  }
}

import 'package:lessons2/generated/l10n.dart';

class Localization {
  static String statusLabel(String? status) {
    if (status == 'alive') return S.current.alive;
    if (status == 'dead') return S.current.dead;
    return '';
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

import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/support/localization.dart';
import 'package:lessons2/ui/widgets/avatar.dart';

class CharacterListTile extends StatelessWidget {
  CharacterListTile(this.character, {Key? key}) : super(key: key);

  Character character;

  Color _statusColor(String? status) {
    if (status == 'alive') return AppColors.alive;
    if (status == 'dead') return AppColors.dead;
    return AppColors.grey4;
  }

  String get kindAndSexLabel =>
      "${Localization.kindLabel(character.kind)}, ${Localization.sexLabel(character.sex)}";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      minLeadingWidth: 60,
      leading: Avatar(
        character.avatar,
        radius: const Radius.circular(30),
      ),
      title: Text(Localization.statusLabel(character.status).toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: _statusColor(character.status))),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(character.fullName,
              style: Theme.of(context).textTheme.titleLarge),
          Text(kindAndSexLabel, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/support/localization.dart';

class CharacterListTile extends StatelessWidget {
  CharacterListTile({Key? key, required this.character}) : super(key: key);

  Character character;

  Color _statusColor(String? status) {
    if (status == 'alive') return AppColors.alive;
    if (status == 'dead') return AppColors.dead;
    return AppColors.grey4;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 36,
          backgroundImage: AssetImage(character.avatar),
        ),
      ),
      title: Text(
        Localization.statusLabel(character.status).toUpperCase(),
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: _statusColor(character.status),
            ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(character.fullName,
              style: Theme.of(context).textTheme.titleLarge),
          Text(
            "${Localization.kindLabel(character.kind)}, ${Localization.sexLabel(character.sex)}",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

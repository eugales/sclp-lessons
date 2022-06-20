import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/support/localization.dart';

class CharacterGridTile extends StatelessWidget {
  CharacterGridTile({Key? key, required this.character}) : super(key: key);

  Character character;

  Color _statusColor(String? status) {
    if (status == 'alive') return AppColors.alive;
    if (status == 'dead') return AppColors.dead;
    return AppColors.grey4;
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).backgroundColor,
                border: Border.all(
                  color: Theme.of(context).backgroundColor,
                ),
              ),
              child: CircleAvatar(
                radius: 53,
                backgroundImage: AssetImage(character.avatar),
              ),
            ),
          ),
          Text(
            Localization.statusLabel(character.status).toUpperCase(),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: _statusColor(character.status),
                ),
          ),
          const SizedBox(height: 4),
          Text(
            character.fullName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "${Localization.kindLabel(character.kind)}, ${Localization.sexLabel(character.sex)}",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/support/localization.dart';
import 'package:lessons2/ui/widgets/avatar.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile(this.character, {Key? key, required this.size})
      : super(key: key);

  final Character character;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          SizedBox.square(
            dimension: size.width * 0.197,
            child: Avatar(
              key: key,
              character.image,
              radius: const Radius.circular(40),
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Localization.statusLabel(character.status).toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: _statusColor(character.status)),
                ),
                const SizedBox(height: 6),
                Text(
                  character.name!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  kindAndSexLabel,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(String? status) {
    return status == 'Alive' ? AppColors.statusAlive : AppColors.statusDead;
  }

  String get kindAndSexLabel =>
      "${Localization.kindLabel(character.species)} ${Localization.sexLabel(character.gender)}";
}

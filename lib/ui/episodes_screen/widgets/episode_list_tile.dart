import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/models/episodes.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile({Key? key, required this.episode}) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 0.1,
              offset: Offset(-1, 1),
            ),
          ],
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 93, 106, 117),
            Color.fromARGB(255, 58, 191, 232),
          ]),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    episode.episode,
                    style: AppStyles.s16w500.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    episode.name,
                    softWrap: false,
                    style: AppStyles.s18w700.copyWith(
                      color: Colors.white,
                      overflow: TextOverflow.fade,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    DateFormat.yMMMMd()
                        .format(DateTime.parse(episode.created))
                        .toString(),
                    style: AppStyles.s16w400.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)
          ],
        ),
      ),
    );
  }
}

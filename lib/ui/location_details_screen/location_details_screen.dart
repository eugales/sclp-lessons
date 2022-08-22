import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lessons2/constants/app_styles.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/location.dart';

class LocationDetailsScreen extends StatelessWidget {
  const LocationDetailsScreen({Key? key, required this.location})
      : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(18.0),
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              location.name!,
              style: AppStyles.s26w500.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Spacer(),
                Text(
                  '${location.type} • ${location.dimension}',
                  style: AppStyles.s20w400.copyWith(color: Colors.grey),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '${S.of(context).aired}: ' 
              '${DateFormat.yMMMMEEEEd().format(location.created!).toString()}',
              style: AppStyles.s20w400,
            ),
          ],
        ),
      ),
    );
  }
}

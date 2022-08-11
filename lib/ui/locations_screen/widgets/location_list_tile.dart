import 'package:flutter/material.dart';
import 'package:lessons2/models/location.dart';

class LocationListTile extends StatelessWidget {
  const LocationListTile({Key? key, required this.location}) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            location.type!,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            location.name!,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            location.dimension!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

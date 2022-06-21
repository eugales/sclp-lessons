import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_assets.dart';

class Avatar extends StatelessWidget {
  const Avatar(
    this.url, {
    Key? key,
    this.margin,
    this.border,
    this.radius = const Radius.circular(0),
  }) : super(key: key);

  final BoxBorder? border;
  final EdgeInsets? margin;
  final Radius radius;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: border, color: Colors.amber),
        child: ClipRRect(
          borderRadius: BorderRadius.all(radius),
          child: Image(
              image: url == null || url == ''
                  ? AssetImage(AppAssets.images.noAvatar) as ImageProvider
                  : NetworkImage(url!),
              fit: BoxFit.contain),
        ));
  }
}

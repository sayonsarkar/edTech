import 'package:edtech/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final Function() onTap;
  final bool enable;
  const NotificationTiles({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 30.0,
        width: 30.0,
        child: Assets.images.notification.image(scale: 2, fit: BoxFit.cover),
      ),
      title: Text(title, style: const TextStyle(color: Color(0xFF303030))),
      subtitle:
          Text(subtitle, style: const TextStyle(color: Color(0xFF808080))),
      onTap: onTap,
      enabled: enable,
    );
  }
}

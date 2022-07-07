import 'package:flutter/material.dart';

class VerticalAdvantageWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;

  const VerticalAdvantageWidget({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(iconData, size: 60.0),
        const SizedBox(height: 8.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

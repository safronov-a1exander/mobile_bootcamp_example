import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SmallInfoWidget extends StatelessWidget {
  const SmallInfoWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.subtitle1,
    required this.subtitle2,
  });
  final String label;
  final String icon;
  final String subtitle1;
  final String subtitle2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
          CachedNetworkImage(
            imageUrl: icon,
            width: 30,
            height: 30,
          ),
          const SizedBox(height: 8),
          Text(subtitle1, style: Theme.of(context).textTheme.bodySmall),
          Text(subtitle2, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

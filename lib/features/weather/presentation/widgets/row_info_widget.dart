import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class RowInfoWidget extends StatelessWidget {
  const RowInfoWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: AppColors.white1,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                label,
                style: const TextStyle(fontSize: 16, color: AppColors.white1),
              ),
            ],
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

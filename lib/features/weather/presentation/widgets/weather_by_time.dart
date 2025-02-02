import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/common/format_date.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/hour_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/small_info_widget.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class WeatherByTimeWidget extends StatelessWidget {
  const WeatherByTimeWidget({super.key, required this.hours});
  final List<HourModel> hours;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.blueWithOpacity,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: hours.length,
            itemBuilder: (context, index) {
              final hour = hours[index];
              return SmallInfoWidget(
                label: formatTimeToHour(dateTime: hour.time),
                icon: "https:${hour.condition.icon}",
                subtitle1: "${hour.humidity.toString()}%",
                subtitle2: "${hour.tempC}C",
              );
            },
          ),
        ),
      ),
    );
  }
}

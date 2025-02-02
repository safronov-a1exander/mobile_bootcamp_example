import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/common/format_date.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/forecast_day_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/small_info_widget.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class WeatherByDaysWidget extends StatelessWidget {
  const WeatherByDaysWidget({super.key, required this.days});
  final List<ForecastDayModel> days;

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
            itemCount: days.length,
            itemBuilder: (context, index) {
              final day = days[index];
              return SmallInfoWidget(
                label: formatDateToDayOfWeek(date: day.date),
                icon: "https:${day.day.condition.icon}",
                subtitle1: day.day.condition.text,
                subtitle2: "${day.day.mintempC}°/${day.day.maxtempC}°",
              );
            },
          ),
        ),
      ),
    );
  }
}

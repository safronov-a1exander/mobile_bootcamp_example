import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/common/format_date.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: AppColors.black2,
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            ),
            Text(
              weatherModel.location.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Icon(Icons.add, color: AppColors.black2),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          formatDate(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: "https:${weatherModel.current.condition.icon}",
            ),
            Text(
              "${weatherModel.current.tempC}°",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.white1,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Center(
          child: Text(
            "${weatherModel.forecast?.forecastDay.first.day.mintempC ?? ''}°/${weatherModel.forecast?.forecastDay.first.day.maxtempC} ${AppLocalizations.of(context)!.feelsLike} ${weatherModel.current.feelslikeC}°",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 4),
        Center(
          child: Text(
            weatherModel.current.condition.text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "${AppLocalizations.of(context)!.lastUpdated} ${weatherModel.current.lastUpdated}",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

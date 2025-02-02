import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/current_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/row_info_widget.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({super.key, required this.currentWeather});
  final CurrentModel currentWeather;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.blueWithOpacity,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8),
          physics: NeverScrollableScrollPhysics(),
          children: [
            RowInfoWidget(
              icon: Icons.water_drop,
              label: AppLocalizations.of(context)!.humidity,
              value: '${currentWeather.humidity.toString()}%',
            ),
            RowInfoWidget(
              icon: Icons.speed,
              label: AppLocalizations.of(context)!.pressure,
              value:
                  '${currentWeather.pressureMb} ${AppLocalizations.of(context)!.mb}',
            ),
            RowInfoWidget(
              icon: Icons.air,
              label: AppLocalizations.of(context)!.windSpeed,
              value:
                  '${currentWeather.windKph} ${AppLocalizations.of(context)!.kph}',
            ),
            RowInfoWidget(
              icon: Icons.flag,
              label: AppLocalizations.of(context)!.windDirection,
              value: currentWeather.windDir,
            ),
            RowInfoWidget(
              icon: Icons.waves,
              label: AppLocalizations.of(context)!.precipitation,
              value:
                  '${currentWeather.windKph} ${AppLocalizations.of(context)!.mm}',
            ),
            RowInfoWidget(
              icon: Icons.visibility,
              label: AppLocalizations.of(context)!.visibility,
              value:
                  '${currentWeather.visKm} ${AppLocalizations.of(context)!.km}',
            ),
            RowInfoWidget(
              icon: Icons.wb_sunny,
              label: AppLocalizations.of(context)!.uvIndex,
              value: currentWeather.uv.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

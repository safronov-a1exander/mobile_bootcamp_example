import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/astro_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/row_info_widget.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SunAndMoonWidget extends StatelessWidget {
  const SunAndMoonWidget({super.key, required this.astroModel});
  final AstroModel astroModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 140,
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
              icon: Icons.wb_sunny,
              label: AppLocalizations.of(context)!.sunrise,
              value: astroModel.sunrise,
            ),
            RowInfoWidget(
              icon: Icons.wb_twilight,
              label: AppLocalizations.of(context)!.sunset,
              value: astroModel.sunset,
            ),
            RowInfoWidget(
              icon: Icons.nightlight_round,
              label: AppLocalizations.of(context)!.moonrise,
              value: astroModel.moonrise,
            ),
            RowInfoWidget(
              icon: Icons.nightlight,
              label: AppLocalizations.of(context)!.windDirection,
              value: astroModel.moonset,
            ),
          ],
        ),
      ),
    );
  }
}

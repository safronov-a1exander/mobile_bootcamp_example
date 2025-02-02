import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/bloc/weather/weather_bloc.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/additional_info.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/sun_and_moon.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/weather_by_days.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/weather_by_time.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BlocBuilder<WeatherBloc, WeatherState>(
              buildWhen: (previous, current) =>
                  (previous is WeatherInitialState),
              builder: (context, state) {
                return switch (state) {
                  WeatherLoadingState _ => Center(
                      child: CircularProgressIndicator(
                        color: AppColors.white1,
                      ),
                    ),
                  WeatherFailureState _ => Center(
                      child: Column(
                        children: [
                          Text(AppLocalizations.of(context)!.failedToFetchData),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.error_outline,
                              color: AppColors.white1,
                            ),
                          ),
                          ElevatedButton(
                            child: Text("Go back"),
                            onPressed: () =>
                                Navigator.pushReplacementNamed(context, '/'),
                          ),
                        ],
                      ),
                    ),
                  WeatherSuccessState _ => Column(
                      spacing: 20,
                      children: [
                        CurrentWeatherWidget(weatherModel: state.weather),
                        WeatherByTimeWidget(
                          hours: state.weather.forecast!.forecastDay.first.hour,
                        ),
                        WeatherByDaysWidget(
                          days: state.weather.forecast!.forecastDay,
                        ),
                        AdditionalInfoWidget(
                          currentWeather: state.weather.current,
                        ),
                        SunAndMoonWidget(
                          astroModel:
                              state.weather.forecast!.forecastDay.first.astro,
                        ),
                      ],
                    ),
                  _ => SizedBox()
                };
              },
            ),
          ),
        ),
      ),
    );
  }
}

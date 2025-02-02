import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/additional_info.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/sun_and_moon.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/weather_by_days.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/weather_by_time.dart';
import 'package:mobile_bootcamp_example/resources/mock.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  static const WeatherModel weather = mockWeatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blue,
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              spacing: 20,
              children: [
                CurrentWeatherWidget(weatherModel: weather),
                WeatherByTimeWidget(
                    hours: weather.forecast!.forecastDay.first.hour),
                WeatherByDaysWidget(
                  days: weather.forecast!.forecastDay,
                ),
                AdditionalInfoWidget(
                  currentWeather: weather.current,
                ),
                SunAndMoonWidget(
                  astroModel: weather.forecast!.forecastDay.first.astro,
                ),
              ],
            ),
          ),
        )));
  }
}

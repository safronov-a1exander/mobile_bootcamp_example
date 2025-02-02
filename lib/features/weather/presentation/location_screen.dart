import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/bloc/city/city_bloc.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/bloc/weather/weather_bloc.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/submit_form.dart';
import 'package:mobile_bootcamp_example/resources/app_images.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.chooseCity),
        centerTitle: true,
        leading: Icon(Icons.location_city_rounded),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Spacer(),
                Image.asset(AppImages.weatherIcon),
                SizedBox(
                  height: 30,
                ),
                BlocListener<CityBloc, CityState>(
                  listener: (context, state) {
                    if (state is CitySuccessState) {
                      context
                          .read<WeatherBloc>()
                          .add(WeatherEvent.getForecast(state.city));
                      Navigator.pushReplacementNamed(context, '/weather');
                    }
                  },
                  child: SubmitForm(),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

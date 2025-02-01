import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Rememba
import 'package:flutter_localizations/flutter_localizations.dart'; // Rememba
import 'package:mobile_bootcamp_example/features/weather/presentation/location_screen.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/weather_screen.dart';
import 'package:mobile_bootcamp_example/uikit/theme/theme.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile-bootcamp-weather-app',
      theme: theme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ru'),
      ],
      routes: {
        '/': (context) => const LocationScreen(),
        '/weather': (context) => WeatherScreen(),
      },
    );
  }
}

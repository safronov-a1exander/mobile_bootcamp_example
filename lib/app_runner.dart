import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/app/app.dart';

void runWeatherApp() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(WeatherApp());
  }, (exception, stackTrace) async {
    log(exception.toString() + stackTrace.toString());
  });
}

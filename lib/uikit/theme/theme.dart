import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/resources/font_family.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

const textTheme = TextTheme(
  headlineSmall: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      height: 1.5,
      color: AppColors.white1),
  bodySmall: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5,
      color: AppColors.white1),
  bodyLarge: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.21,
      color: AppColors.white1),
  bodyMedium: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.21,
      color: AppColors.white1),
  headlineLarge: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 1.21,
  ),
  headlineMedium: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.21,
  ),
  labelLarge: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    height: 1.21,
  ),
  labelMedium: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 1.21,
  ),
  labelSmall: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 1.21,
  ),
  titleSmall: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1,
    letterSpacing: -0.24,
  ),
  titleMedium: TextStyle(
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 1.21,
  ),
);

final ThemeData theme = ThemeData(
  scaffoldBackgroundColor: AppColors.white1,
  primaryColor: AppColors.blue,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(backgroundColor: AppColors.blue),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AppColors.white1,
        shadowColor: AppColors.black2),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: AppColors.white2,
    titleTextStyle: textTheme.labelMedium?.copyWith(color: AppColors.black1),
    subtitleTextStyle: textTheme.labelMedium?.copyWith(color: AppColors.black2),
    contentPadding: const EdgeInsets.symmetric(horizontal: 14),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 16,
    ),
    fillColor: AppColors.lightBlue,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  textTheme: textTheme,
);

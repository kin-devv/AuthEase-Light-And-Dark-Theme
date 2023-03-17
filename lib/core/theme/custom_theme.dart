import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qoute_app/core/theme/theme_color.dart';

class CustomTheme {
  CustomTheme._();

  static lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.backgroundColor,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: AppColor.accentColor),
      textTheme:
          GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(),
      colorScheme: ColorScheme.light(
        primary: AppColor.primaryColor,
        background: AppColor.backgroundColor,
        secondary: AppColor.secondaryColor,
        error: AppColor.errorColor,
      ),
    );
  }

  static darkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.lightTextColor,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: AppColor.accentColor),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: AppColor.darkTextColor,
      ),
      colorScheme: ColorScheme.dark(
        primary: AppColor.primaryColor,
        secondary: AppColor.secondaryColor,
        error: AppColor.errorColor,
      ),
    );
  }

  static final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
}

import 'package:cursedcart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/chip_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:cursedcart/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class CursedTheme {
  //private constructor
  CursedTheme._();

  //light theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: CursedTextTheme.lightTextTheme,
      elevatedButtonTheme: CursedElevatedButtonTheme.lightTheme,
      appBarTheme: CursedAppbarTheme.lightAppbarTheme,
      checkboxTheme: CursedCheckboxTheme.lightTheme,
      outlinedButtonTheme: CursedOutlinedButtonTheme.lightTheme,
      bottomSheetTheme: CursedBottomSheetTheme.lightTheme,
      inputDecorationTheme: CursedTextFieldTheme.lightTheme,
      chipTheme: CursedChipTheme.lightTheme);

  //dark theme
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: CursedTextTheme.darkTextTheme,
      elevatedButtonTheme: CursedElevatedButtonTheme.darkTheme,
      appBarTheme: CursedAppbarTheme.darkAppbarTheme,
      checkboxTheme: CursedCheckboxTheme.darkTheme,
      outlinedButtonTheme: CursedOutlinedButtonTheme.darkTheme,
      bottomSheetTheme: CursedBottomSheetTheme.darkTheme,
      inputDecorationTheme: CursedTextFieldTheme.darkTheme,
      chipTheme: CursedChipTheme.darkTheme);
}

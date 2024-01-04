import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CursedChipTheme {
  CursedChipTheme._();

  //light mode
  static ChipThemeData lightTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: CursedColor.primary,
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );

  //dark mode
  static ChipThemeData darkTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: CursedColor.primary,
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );
}

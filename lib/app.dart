import 'package:cursedcart/features/authentication/screens/login.dart';
import 'package:cursedcart/features/authentication/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CursedTheme.lightTheme,
      darkTheme: CursedTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}

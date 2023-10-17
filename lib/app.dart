import 'package:cursedcart/features/authentication/screens/login.dart';
import 'package:cursedcart/features/authentication/screens/onboarding.dart';
import 'package:cursedcart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:cursedcart/features/authentication/screens/signup/signup.dart';
import 'package:cursedcart/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CursedTheme.lightTheme,
      darkTheme: CursedTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}

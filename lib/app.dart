import 'package:cursedcart/features/shop/screens/product_details/product_details.dart';
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

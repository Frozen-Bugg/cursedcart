import 'package:cursedcart/features/personalization/screens/settings/settings.dart';
import 'package:cursedcart/features/shop/screens/home/home.dart';
import 'package:cursedcart/features/shop/screens/store/store.dart';
import 'package:cursedcart/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  final controller = Get.put(NavigationMenuController());

  NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: Colors.transparent,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.happyemoji), label: 'Whislist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  static NavigationMenuController get instance => Get.find();
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const CursedWishlist(),
    const CursedSetting()
  ];
}

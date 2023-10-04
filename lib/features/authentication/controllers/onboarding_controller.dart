import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../screens/login.dart';

class OnboaringController extends GetxController {
  static OnboaringController get instance => Get.find();

  final pageController = PageController();
  final currentPageIndex = 0.obs;
  //updates curr index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //dot navigation
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //update index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value = currentPageIndex.value + 1;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  //skip all pages
  void skipPage() {
    Get.offAll(const LoginScreen());
  }
}

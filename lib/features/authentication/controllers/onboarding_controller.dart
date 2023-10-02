import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboaringController extends GetxController {
  static OnboaringController get instance => Get.find();

  final pageController = PageController();
  final currentPageIndex = 0.obs;
  //updates curr index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //dot navigation
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Go.to(LoginPage());
    } else {
      currentPageIndex.value = currentPageIndex.value + 1;
      pageController.jumpTo(currentPageIndex.value as double);
    }
  }

  //skip all pages
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
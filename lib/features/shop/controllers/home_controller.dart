import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselvalue = 0.obs;
  void updatePageIndex(index) {
    carouselvalue.value = index;
  }
}

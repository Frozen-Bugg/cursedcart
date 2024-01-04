import 'package:carousel_slider/carousel_slider.dart';
import 'package:cursedcart/common/widget/customshapes/containers/circular_container.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/features/shop/controllers/home_controller.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSliderWithImage extends StatelessWidget {
  const PromoSliderWithImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: CarouselSlider(
              items: const [
                CursedRoundedImage(imageUrl: 'a'),
                CursedRoundedImage(imageUrl: 'b'),
                CursedRoundedImage(imageUrl: 'c'),
              ],
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, reason) =>
                    controller.updatePageIndex(index),
              )),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CursedCircularContainer(
                  width: 20,
                  height: 4,
                  radius: 4,
                  margin: const EdgeInsets.only(right: 5),
                  backgroundcolor: controller.carouselvalue == i
                      ? CursedColor.primary
                      : Colors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}

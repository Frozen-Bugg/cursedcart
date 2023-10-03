import 'package:cursedcart/features/authentication/controllers/onboarding_controller.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/device/device_utility.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboaringController());
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnboardingPage(
              image: "assets/images/onboarding_screen/bat.png",
              title: "Welcome to CURSED CART",
              subtitle: "Choose your curse products",
            ),
            OnboardingPage(
              image: "assets/images/onboarding_screen/pumpkin.png",
              title: "Pay with cursed energy",
              subtitle: "Easily pay using any method",
            ),
            OnboardingPage(
              image: "assets/images/onboarding_screen/pumpkins.png",
              title: "Delivered at your doorstep",
              subtitle: "Get it right at your doorstep in a matter of time",
            ),
          ],
        ),
        SkipButton(),
        PageIndicator(),
        OnboardingNext(),
      ]),
    );
  }
}

class OnboardingNext extends StatelessWidget {
  const OnboardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: CursedeviceUtils.getStatusbarHeight() + 25,
      right: 24,
      child: ElevatedButton(
        onPressed: () => OnboaringController.instance.nextPage(),
        child: Icon(Icons.arrow_forward),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  PageIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnboaringController.instance;
    final dark = CursedHelper.isDarkMode(context);
    return Positioned(
        bottom: CursedeviceUtils.getStatusbarHeight() + 25,
        left: 24,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? Colors.white : Colors.black, dotHeight: 6),
        ));
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: CursedeviceUtils.getStatusbarHeight(),
        right: 24,
        child: TextButton(
          onPressed: () => OnboaringController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: CursedeviceUtils.getScreenWidth(context) * 0.8,
            height: CursedeviceUtils.getScreenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

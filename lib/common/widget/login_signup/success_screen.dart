import 'package:cursedcart/common/style/spacing_style.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.img,
      required this.onpress});

  final String title;
  final String subtitle;
  final String img;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CursedSpace.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              //image
              Center(
                child: Image(
                  image: AssetImage(img),
                  width: CursedeviceUtils.getScreenWidth(context) * 0.6,
                ),
              ),
              const SizedBox(height: 32),
              //title and subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 32),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onpress,
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

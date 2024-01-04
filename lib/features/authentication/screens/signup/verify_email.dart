import 'package:cursedcart/common/style/spacing_style.dart';
import 'package:cursedcart/common/widget/login_signup/success_screen.dart';
import 'package:cursedcart/features/authentication/screens/login.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: CursedSpace.paddingWithAppbarHeight,
          child: Column(
            children: [
              //image
              Center(
                child: Image(
                  image:
                      const AssetImage("assets/images/signup_screen/email.png"),
                  width: CursedeviceUtils.getScreenWidth(context) * 0.6,
                ),
              ),
              const SizedBox(height: 32),
              //title and subtitle
              Text(
                "Verify your Email Address",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                "Abc@gmail.com",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              Text(
                "Your Email awaits your verification",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 32),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(SuccessScreen(
                    title: "Email Verified",
                    subtitle: "Congratulations, You can go ahead and login",
                    img: "assets/images/signup_screen/email.png",
                    onpress: () => Get.offAll(() => const LoginScreen()),
                  )),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

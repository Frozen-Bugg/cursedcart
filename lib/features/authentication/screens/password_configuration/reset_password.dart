import 'package:cursedcart/common/style/spacing_style.dart';
import 'package:cursedcart/common/widget/success_screen.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: CursedSpace.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              //image
              Center(
                child: Image(
                  image:
                      const AssetImage('assets/images/signup_screen/email.png'),
                  width: CursedeviceUtils.getScreenWidth(context) * 0.6,
                ),
              ),
              const SizedBox(height: 32),
              //title and subtitle
              Text(
                'Reset Password link sent',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Check Your mail',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 32),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
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

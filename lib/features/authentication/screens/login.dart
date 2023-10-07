import 'package:cursedcart/common/style/spacing_style.dart';
import 'package:cursedcart/common/widget/divider_line.dart';
import 'package:cursedcart/features/authentication/screens/signup/signup.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/widget/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CursedSpace.paddingWithAppbarHeight,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginIntro(),
              LoginForm(),
              CursedDivider(label: "or sign in with"),
              SizedBox(height: 16),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class LoginIntro extends StatelessWidget {
  const LoginIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage("assets/images/login_screen/mermaid.png"),
          height: 150,
        ),
        const SizedBox(height: 16),
        Text('Welcome Back!',
            style: Theme.of(context).textTheme.headlineMedium),
        Text('to cursed cart', style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), labelText: "Email"),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember me"),
                ],
              ),
              //forget password
              TextButton(onPressed: () {}, child: const Text("Forget Password"))
            ],
          ),
          SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text("Login"))),
          const SizedBox(height: 16),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text("Create Account")))
        ],
      ),
    ));
  }
}

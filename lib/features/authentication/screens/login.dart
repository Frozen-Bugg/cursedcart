import 'package:cursedcart/common/style/spacing_style.dart';
import 'package:cursedcart/common/widget/divider_line.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CursedHelper.isDarkMode(context);
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
        Image(
          image: AssetImage("assets/images/login_screen/mermaid.png"),
          height: 150,
        ),
        SizedBox(height: 16),
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
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), labelText: "Email"),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text("Remember me"),
                ],
              ),
              //forget password
              TextButton(onPressed: () {}, child: Text("Forget Password"))
            ],
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("Login"))),
          SizedBox(height: 16),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: Text("Create Account")))
        ],
      ),
    ));
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/images/login_screen/google.png"),
              width: 100,
              height: 100,
            ),
          ),
        ),
        SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/images/login_screen/facebook.png"),
              width: 100,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }
}

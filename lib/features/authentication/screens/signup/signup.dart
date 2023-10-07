import 'package:cursedcart/common/widget/divider_line.dart';
import 'package:cursedcart/common/widget/social_buttons.dart';
import 'package:cursedcart/features/authentication/screens/signup/verify_email.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CursedHelper.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Create your account",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 32),
            Form(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: "First Name"),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: "Last Name"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_add),
                      labelText: "Username"),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.message), labelText: "E-Mail"),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.call), labelText: "Phone no."),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: "Password",
                      suffixIcon: Icon(Iconsax.eye_slash)),
                ),
              ],
            )),
            const SizedBox(height: 24),
            Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {})),
                Flexible(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: " I agree to ",
                        style: Theme.of(context).textTheme.labelMedium),
                    TextSpan(
                        text: "private policy ",
                        style: Theme.of(context).textTheme.labelMedium!.apply(
                              color: dark ? Colors.white : Colors.blueGrey,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? Colors.white : Colors.blueGrey,
                            )),
                    TextSpan(
                        text: "and ",
                        style: Theme.of(context).textTheme.labelMedium),
                    TextSpan(
                        text: "terms and conditions",
                        style: Theme.of(context).textTheme.labelMedium!.apply(
                              color: dark ? Colors.white : Colors.blueGrey,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? Colors.white : Colors.blueGrey,
                            )),
                  ])),
                )
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(const VerifyEmailScreen()),
                  child: const Text("Create Account")),
            ),
            const SizedBox(height: 24),
            const CursedDivider(label: "or sign up with"),
            const SizedBox(height: 24),
            const SocialButtons()
          ]),
        ),
      ),
    );
  }
}

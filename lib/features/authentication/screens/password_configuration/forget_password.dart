import 'package:cursedcart/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Forget Password',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Lets Resolve your issue',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 48),
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Email', prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(height: 24),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                  child: const Text('Submit'))),
        ]),
      ),
    );
  }
}

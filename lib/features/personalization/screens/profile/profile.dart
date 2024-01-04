import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/login_signup/divider_line.dart';
import 'package:cursedcart/features/personalization/screens/profile/widget/edit_profile_details.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CursedProfileScreen extends StatelessWidget {
  const CursedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CursedAppBar(title: Text('Profile'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Column(children: [
          //profile picture
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                CursedRoundedImage(
                  imageUrl: 'False',
                  width: 80,
                  height: 80,
                  borderRadius: 80,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Change Profile picture'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.grey)),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
                color: CursedHelper.isDarkMode(context)
                    ? Colors.white.withOpacity(0.5)
                    : Colors.black.withOpacity(0.5)),
          ),
          const SizedBox(height: 8),
          CursedSectionHeading(
              title: 'Profile Details', showActionButton: false),
          SizedBox(height: 16),
          ProfileEditDetails(ontap: () {}, title: 'Name', value: 'FrozenBug'),
          ProfileEditDetails(
              ontap: () {}, title: 'Username', value: 'frozen_bug'),

          //personal details
          SizedBox(height: 24),
          CursedSectionHeading(
              title: 'Personal Details', showActionButton: false),
          SizedBox(height: 16),
          ProfileEditDetails(
              ontap: () {},
              title: 'User ID',
              value: '1617',
              icon: Iconsax.copy),
          ProfileEditDetails(
              ontap: () {}, title: 'Email', value: '21051617@kiit.ac.in'),
          ProfileEditDetails(
              ontap: () {}, title: 'Phone no.', value: '+91 9371630171'),
          ProfileEditDetails(ontap: () {}, title: 'Gender', value: 'Male'),
          ProfileEditDetails(
              ontap: () {}, title: 'Date of Birth', value: '09 Oct 2002'),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
                color: CursedHelper.isDarkMode(context)
                    ? Colors.white.withOpacity(0.5)
                    : Colors.black.withOpacity(0.5)),
          ),
          SizedBox(height: 16),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Close account',
                style: TextStyle(color: Colors.red),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

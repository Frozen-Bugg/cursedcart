import 'package:cursedcart/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CursedProfileTile extends StatelessWidget {
  const CursedProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Iconsax.user,
        size: 50,
        color: Colors.white,
      ),
      title: Text(
        'FrozenBug',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        '21051617@kiit.ac.in',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        icon: Icon(Iconsax.edit, color: Colors.white),
        onPressed: () => Get.to(const CursedProfileScreen()),
      ),
    );
  }
}

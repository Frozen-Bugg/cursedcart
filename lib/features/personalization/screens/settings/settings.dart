import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/listTile/profile_list_tile.dart';
import 'package:cursedcart/common/widget/listTile/setting_menu_tile.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CursedSetting extends StatelessWidget {
  const CursedSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const CursedPrimaryHeaderContainer(
              child: Column(
            children: [
              CursedAppBar(
                title: Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CursedProfileTile(),
              SizedBox(height: 32)
            ],
          )),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                const CursedSectionHeading(
                    title: 'Account Settings', showActionButton: false),
                const SizedBox(height: 24),
                SettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My address',
                  subtitle: 'Your shopping delivery address',
                  ontap: () {},
                ),
                const SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address'),
                const SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout'),
                const SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders'),
                const SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account'),
                const SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons'),
                const SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message'),
                const SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts'),
                const SizedBox(height: 24),

                //App settings
                const CursedSectionHeading(
                  title: 'App setting',
                  showActionButton: false,
                ),
                const SizedBox(height: 16),
                const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload you data to cloud firebase'),
                SettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subtitle: 'Set recommendation based on location',
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                SettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subtitle: 'Results safe for all age',
                  trailing: Switch(
                    value: false,
                    onChanged: (bool value) {},
                  ),
                ),
                SettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD image',
                  subtitle: 'Image quality',
                  trailing: Switch(
                    value: false,
                    onChanged: (bool value) {},
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(CursedColor.primary),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text('LogOut'),
                  ),
                ),
                const SizedBox(height: 32)
              ],
            ),
          )
        ]),
      ),
    );
  }
}

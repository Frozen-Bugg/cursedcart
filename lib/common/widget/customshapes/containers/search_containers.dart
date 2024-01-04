import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CursedSearchContainer extends StatelessWidget {
  const CursedSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackgroundColor = true,
    this.ontap,
  });
  final String text;
  final IconData? icon;
  final bool showBackgroundColor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    final dark = CursedHelper.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: CursedeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: showBackgroundColor
                  ? dark
                      ? Colors.black
                      : Colors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey)),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 16),
              Text(text, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}

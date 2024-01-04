import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CursedTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CursedTabBar({super.key, required this.tab});
  final List<Widget> tab;
  @override
  Widget build(BuildContext context) {
    final isDark = CursedHelper.isDarkMode(context);
    return Material(
      color: isDark ? Colors.black : Colors.white,
      child: TabBar(
        tabs: tab,
        isScrollable: true,
        indicatorColor: CursedColor.primary,
        unselectedLabelColor: Colors.grey,
        labelColor: isDark ? Colors.white : Colors.black,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CursedeviceUtils.getAppBarHeight());
}

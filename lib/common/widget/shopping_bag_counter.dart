import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.iconcolor = Colors.white,
    required this.onPressed,
  });

  final Color iconcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    bool isDark = CursedHelper.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: isDark ? Colors.white : Colors.black,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
            "5",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: Colors.white, fontSizeFactor: 0.8),
          )),
        ),
      )
    ]);
  }
}

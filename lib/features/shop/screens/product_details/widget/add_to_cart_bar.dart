import 'package:cursedcart/common/widget/customshapes/containers/icon_container.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddToCartBar extends StatelessWidget {
  const AddToCartBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CursedHelper.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          color: isDark
              ? Color.fromARGB(255, 25, 25, 25)
              : const Color.fromARGB(255, 202, 202, 202),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircularIconButton(
                icon: Iconsax.minus,
                color: isDark ? Colors.white : Colors.black),
            SizedBox(width: 8),
            Text('2', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(width: 8),
            CircularIconButton(
                icon: Iconsax.add, color: isDark ? Colors.white : Colors.black),
          ]),
          ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                child: Text('Add to cart'),
              ))
        ],
      ),
    );
  }
}

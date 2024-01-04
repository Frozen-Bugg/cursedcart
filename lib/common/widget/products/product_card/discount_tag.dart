import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class DiscountTag extends StatelessWidget {
  const DiscountTag({
    super.key,
    required this.discount,
  });
  final int discount;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CursedColor.secondary, borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.all(4),
      child: Text(
        '$discount%',
        style:
            Theme.of(context).textTheme.labelMedium!.apply(color: Colors.black),
      ),
    );
  }
}

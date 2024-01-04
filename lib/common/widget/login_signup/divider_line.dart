import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CursedDivider extends StatelessWidget {
  const CursedDivider({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    bool dark = CursedHelper.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? Colors.blueGrey : Colors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? Colors.blueGrey : Colors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

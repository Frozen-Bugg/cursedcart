import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.icon,
    this.onpressed,
    this.color = Colors.red,
  });
  final IconData icon;
  final Color color;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CursedHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: IconButton(
        icon: Icon(
          icon,
          size: 20,
          color: color,
        ),
        onPressed: () {},
      ),
    );
  }
}

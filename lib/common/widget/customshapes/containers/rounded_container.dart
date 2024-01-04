import 'package:flutter/material.dart';

class CursedRoundedContainer extends StatelessWidget {
  const CursedRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.border,
    this.backgroundColor = Colors.transparent,
    this.padding,
    this.onPressed,
    this.borderRadius = 16,
    required this.child,
  });
  final double? width, height;
  final BoxBorder? border;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: child,
      ),
    );
  }
}

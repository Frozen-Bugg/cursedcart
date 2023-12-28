import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CursedRoundedImage extends StatelessWidget {
  const CursedRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = CursedColor.accent,
    this.fit = BoxFit.contain,
    this.padding,
    this.isImageNetwork = false,
    this.onPressed,
    this.borderRadius = 24,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isImageNetwork;
  final VoidCallback? onPressed;
  final double borderRadius;

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
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isImageNetwork
                  ? NetworkImage(imageUrl)
                  : const AssetImage('assets/images/login_screen/mermaid.png')
                      as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}

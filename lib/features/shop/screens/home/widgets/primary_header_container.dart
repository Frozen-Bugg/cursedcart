import 'package:cursedcart/common/widget/customshapes/containers/circular_container.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges_widget.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CursedPrimaryHeaderContainer extends StatelessWidget {
  const CursedPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomEdgeWidget(
      child: Container(
        color: CursedColor.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            const Positioned(
                top: -150, right: -250, child: CursedCircularContainer()),
            const Positioned(
                top: 100, right: -300, child: CursedCircularContainer()),
            child,
          ],
        ),
      ),
    );
  }
}

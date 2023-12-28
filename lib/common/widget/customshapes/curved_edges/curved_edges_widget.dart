import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CustomEdgeWidget extends StatelessWidget {
  const CustomEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CursedCurvedEdge(),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class CursedGridView extends StatelessWidget {
  const CursedGridView({
    super.key,
    required this.itemcount,
    this.maxAxisExtent = 308,
    required this.itembuilder,
  });

  final int itemcount;
  final double? maxAxisExtent;
  final Widget? Function(BuildContext, int) itembuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemcount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: maxAxisExtent),
        itemBuilder: itembuilder);
  }
}

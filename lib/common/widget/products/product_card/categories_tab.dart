import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/products/product_card/brand_showcase.dart';
import 'package:cursedcart/common/widget/products/product_card/grid_view.dart';
import 'package:cursedcart/common/widget/products/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';

class CursedCategoriesTab extends StatelessWidget {
  const CursedCategoriesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CursedBrandShowcase(images: [
                'assets/images/impact.png',
                'assets/images/impact.png',
                'assets/images/impact.png',
              ]),
              CursedSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              CursedGridView(
                  itemcount: 4,
                  itembuilder: (_, index) => const VerticalProductCard())
            ],
          ),
        ),
      ],
    );
  }
}

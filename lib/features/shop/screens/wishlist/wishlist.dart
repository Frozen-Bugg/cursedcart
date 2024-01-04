import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/products/product_card/grid_view.dart';
import 'package:cursedcart/common/widget/products/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';

class CursedWishlist extends StatelessWidget {
  const CursedWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CursedAppBar(
          title: Text(
        'Wishlist',
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CursedGridView(
              itemcount: 4, itembuilder: (p0, p1) => VerticalProductCard()),
        ),
      ),
    );
  }
}

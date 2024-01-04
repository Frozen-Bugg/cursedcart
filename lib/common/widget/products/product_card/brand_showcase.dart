import 'package:cursedcart/common/widget/customshapes/containers/rounded_container.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/products/product_card/featured_brand.dart';
import 'package:flutter/material.dart';

class CursedBrandShowcase extends StatelessWidget {
  const CursedBrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CursedRoundedContainer(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        backgroundColor: Colors.transparent,
        height: 200,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: FeaturedBrand(
                brand: 'Nike',
                imgurl: 'Default',
                quantity: '256 items',
                showBorder: false),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: images
                .map((e) => CursedRoundedImage(
                      imageUrl: e,
                      borderRadius: 16,
                      height: 100,
                    ))
                .toList(),
          )
        ]),
      ),
    );
  }
}

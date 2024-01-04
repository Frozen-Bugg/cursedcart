import 'package:cursedcart/common/widget/customshapes/containers/icon_container.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/products/product_card/discount_tag.dart';
import 'package:cursedcart/features/shop/screens/product_details/product_details.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard(
      {super.key,
      this.imagurl = 'Error',
      this.brand = 'Error',
      this.product = 'Error',
      this.discount = 0,
      this.mrp = 0,
      this.linethrough = false,
      this.isVerified = false});

  final String imagurl, brand, product;
  final int mrp, discount;
  final bool linethrough, isVerified;

  @override
  Widget build(BuildContext context) {
    final double price = mrp - (discount / 100) * mrp;
    bool isDark = CursedHelper.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(CursedProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 50,
                  spreadRadius: 7,
                  offset: const Offset(0, 2))
            ],
            borderRadius: BorderRadius.circular(16),
            color: isDark ? Colors.black : Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              const CursedRoundedImage(imageUrl: 'Xyz', applyImageRadius: true),
              Positioned(
                top: 12,
                left: 12,
                child: DiscountTag(discount: discount),
              ),
              //Fav Icon button
              const Positioned(
                  right: 2,
                  top: 2,
                  child: CircularIconButton(icon: Iconsax.heart5))
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    Text(
                      brand,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(width: 12),
                    if (isVerified)
                      const Icon(
                        Iconsax.verify5,
                        size: 15,
                        color: CursedColor.primary,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Spacer(),
          if (linethrough)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Rs $mrp',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(decoration: TextDecoration.lineThrough)),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Rs $price',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: CursedColor.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: const Icon(Iconsax.add, color: Colors.black))
            ],
          ),
        ]),
      ),
    );
  }
}

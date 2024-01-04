import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/products/product_card/discount_tag.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          DiscountTag(discount: 25),
          SizedBox(width: 16),
          Text('Rs 1000',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(decoration: TextDecoration.lineThrough)),
          SizedBox(width: 16),
          Text(
            'Rs 750',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
      SizedBox(height: 16),
      SizedBox(
        width: double.infinity,
        child: Text(
          'Shoes',
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(height: 8),
      Row(
        children: [
          CursedRoundedImage(
              imageUrl: '', width: 32, height: 32, borderRadius: 32),
          SizedBox(width: 8),
          Text(
            'Nike',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.left,
          ),
          const SizedBox(width: 12),
          if (true)
            const Icon(
              Iconsax.verify5,
              size: 15,
              color: CursedColor.primary,
            ),
        ],
      )
    ]);
  }
}

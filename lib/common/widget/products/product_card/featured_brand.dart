import 'package:cursedcart/common/widget/customshapes/containers/rounded_container.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FeaturedBrand extends StatelessWidget {
  const FeaturedBrand({
    super.key,
    required this.imgurl,
    required this.brand,
    required this.quantity,
    this.showBorder = true,
  });
  final bool showBorder;
  final String imgurl, brand, quantity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CursedRoundedContainer(
        border:
            showBorder ? Border.all(color: Colors.grey.withOpacity(0.5)) : null,
        backgroundColor: Colors.transparent,
        borderRadius: 16,
        onPressed: () {},
        child: Row(
          children: [
            Flexible(
              child: CursedRoundedImage(
                  height: 40,
                  imageUrl: imgurl,
                  backgroundColor: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          brand,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const Icon(
                        Iconsax.verify5,
                        size: 15,
                        color: CursedColor.primary,
                      ),
                    ],
                  ),
                  Text(
                    quantity,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/customshapes/containers/icon_container.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges_widget.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/products/product_card/discount_tag.dart';
import 'package:cursedcart/features/shop/screens/product_details/widget/add_to_cart_bar.dart';
import 'package:cursedcart/features/shop/screens/product_details/widget/image_slider.dart';
import 'package:cursedcart/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:cursedcart/features/shop/screens/product_details/widget/product_metadata.dart';
import 'package:cursedcart/features/shop/screens/product_details/widget/ratings-share.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class CursedProductDetailScreen extends StatelessWidget {
  const CursedProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = CursedHelper.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //product image slider
          CursedImageSlider(),
          Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
              child: Column(
                children: [
                  //ratings-share
                  RatingsAndShare(),
                  SizedBox(height: 16),
                  ProductMetaData(),
                  SizedBox(height: 16),
                  CursedProductAtrributes(),

                  SizedBox(height: 32),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  SizedBox(height: 32),
                  CursedSectionHeading(
                      title: 'Description',
                      showActionButton: false,
                      padding: 0),
                  SizedBox(height: 16),
                  ReadMoreText(
                    'The data of the following product is stored in this read text!',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '  Show more',
                    trimExpandedText: '  Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(
                        color: CursedHelper.isDarkMode(context)
                            ? Colors.white.withOpacity(0.5)
                            : Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(height: 16),
                  CursedSectionHeading(
                      title: 'Reviews(199)', padding: 0, onPressed: () {})
                ],
              )),
        ]),
      ),
      bottomNavigationBar: AddToCartBar(),
    );
  }
}

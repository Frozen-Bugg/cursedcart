import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/customshapes/containers/search_containers.dart';
import 'package:cursedcart/common/widget/image_text_widget/vertical_image_text.dart';
import 'package:cursedcart/common/widget/products/product_card/grid_view.dart';
import 'package:cursedcart/common/widget/products/product_card/product_card_vertical.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/promoslide.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //blue part
          const CursedPrimaryHeaderContainer(
            child: Column(
              children: [
                //app bar
                HomeAppBar(),
                SizedBox(height: 32),
                //search bar
                CursedSearchContainer(text: "Search in Store"),
                SizedBox(height: 32),
                //other stuffs
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    children: [
                      CursedSectionHeading(
                          title: 'Popular Catagories',
                          showActionButton: false,
                          textcolor: Colors.white),
                      SizedBox(height: 16),
                      CursedVeritcalImageText(
                          image: 'Img', title: 'Catagories'),
                      SizedBox(height: 32)
                    ],
                  ),
                )
              ],
            ),
          ),
          //white part
          const PromoSliderWithImage(),
          const SizedBox(height: 24),
          CursedSectionHeading(
            title: 'Popular',
            showActionButton: true,
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CursedGridView(
                itemcount: 4,
                itembuilder: ((_, index) => (const VerticalProductCard(
                      brand: 'Nike',
                      discount: 25,
                      mrp: 5000,
                      product: 'Shoes',
                      isVerified: true,
                      linethrough: true,
                    )))),
          ),
        ],
      )),
    );
  }
}

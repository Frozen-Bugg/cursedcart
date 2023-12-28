import 'package:carousel_slider/carousel_slider.dart';
import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/customshapes/containers/circular_container.dart';
import 'package:cursedcart/common/widget/customshapes/containers/search_containers.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges_widget.dart';
import 'package:cursedcart/common/widget/image_text_widget/vertical_image_text.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/common/widget/shopping_bag_counter.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:cursedcart/features/shop/screens/home/widgets/promoslide.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //blue part
          CursedPrimaryHeaderContainer(
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
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    children: [
                      CursedSectionHeading(
                          title: 'Popular Catagories',
                          showActionButton: false,
                          textcolor: Colors.white),
                      SizedBox(height: 16),
                      CursedVeritcalImageText(image: 'Img', title: 'title')
                    ],
                  ),
                )
              ],
            ),
          ),
          //white part
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: CarouselSlider(items: [
              CursedRoundedImage(imageUrl: 'a'),
              CursedRoundedImage(imageUrl: 'b'),
              CursedRoundedImage(imageUrl: 'c'),
            ], options: CarouselOptions(viewportFraction: 1)),
          ),
          CursedPromoSlider()
        ],
      )),
    );
  }
}

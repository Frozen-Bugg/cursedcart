import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/appbar/tabbar.dart';
import 'package:cursedcart/common/widget/customshapes/containers/search_containers.dart';
import 'package:cursedcart/common/widget/products/product_card/categories_tab.dart';
import 'package:cursedcart/common/widget/products/product_card/featured_brand.dart';
import 'package:cursedcart/common/widget/products/product_card/grid_view.dart';
import 'package:cursedcart/common/widget/shopping_bag_counter.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = CursedHelper.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CursedAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerboxscroll) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 330,
                  backgroundColor: isDark ? Colors.black : Colors.white,
                  flexibleSpace: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: 16),
                      const CursedSearchContainer(
                          text: 'Search in Store',
                          icon: Iconsax.search_favorite),
                      const SizedBox(height: 32),
                      //featured brands
                      CursedSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CursedGridView(
                          itemcount: 4,
                          itembuilder: (_, index) => const FeaturedBrand(
                              brand: 'Nike',
                              imgurl: 'Default',
                              quantity: '256 items'),
                          maxAxisExtent: 42,
                        ),
                      ),
                    ],
                  ),
                  bottom: const CursedTabBar(tab: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furnitures')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]),
                )
              ];
            },
            body: const TabBarView(
              //Tabs data
              children: [
                CursedCategoriesTab(),
              ],
            )),
      ),
    );
  }
}

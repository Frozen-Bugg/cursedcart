import 'package:cursedcart/common/widget/appbar/appbar.dart';
import 'package:cursedcart/common/widget/customshapes/containers/icon_container.dart';
import 'package:cursedcart/common/widget/customshapes/curved_edges/curved_edges_widget.dart';
import 'package:cursedcart/common/widget/image_widget/rounded_image.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CursedImageSlider extends StatelessWidget {
  const CursedImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = CursedHelper.isDarkMode(context);
    return CustomEdgeWidget(
      child: Container(
        color: isDark ? Colors.black : Colors.white,
        child: Stack(children: [
          SizedBox(
              height: 400,
              child: Center(
                  child: Image(image: AssetImage('assets/images/impact.png')))),
          Positioned(
            right: 0,
            bottom: 40,
            left: 24,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => CursedRoundedImage(
                  imageUrl: 'Default',
                  width: 80,
                  border: Border.all(color: CursedColor.primary),
                ),
              ),
            ),
          ),
          CursedAppBar(
            showBackArrow: true,
            actions: [
              CircularIconButton(icon: Iconsax.heart5, onpressed: () {})
            ],
          )
        ]),
      ),
    );
  }
}

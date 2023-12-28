import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CursedVeritcalImageText extends StatelessWidget {
  const CursedVeritcalImageText({
    super.key,
    required this.image,
    required this.title,
    this.ontap,
  });

  final image, title;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: ontap,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          color: CursedHelper.isDarkMode(context)
                              ? Colors.black
                              : Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(child: Text(image)),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 55,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            );
          }),
    );
  }
}

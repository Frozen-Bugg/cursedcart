import 'package:cursedcart/common/widget/Text/section_heading.dart';
import 'package:cursedcart/common/widget/chip/choice_chip.dart';
import 'package:cursedcart/common/widget/customshapes/containers/rounded_container.dart';
import 'package:cursedcart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CursedProductAtrributes extends StatelessWidget {
  const CursedProductAtrributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CursedRoundedContainer(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    CursedSectionHeading(
                        title: 'Variations', showActionButton: false),
                    SizedBox(width: 16),
                  ],
                )
              ],
            )),
        SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CursedSectionHeading(
                title: 'Colors:', showActionButton: false, padding: 0),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                CursedChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                CursedChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CursedSectionHeading(
                title: 'Sized:', showActionButton: false, padding: 0),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                CursedChoiceChip(
                    text: 'UK 7', selected: true, onSelected: (value) {}),
                CursedChoiceChip(
                    text: 'UK 9', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}

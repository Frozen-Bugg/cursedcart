import 'package:cursedcart/common/widget/customshapes/containers/circular_container.dart';
import 'package:cursedcart/utils/constants/colors.dart';
import 'package:cursedcart/utils/helpers/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CursedChoiceChip extends StatelessWidget {
  const CursedChoiceChip({
    super.key,
    required this.selected,
    required this.text,
    this.onSelected,
  });

  final bool selected;
  final String text;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = ColorHelperFunctions.getColor(text) != null;
    return Stack(
      children: [
        ChoiceChip(
          label: color ? SizedBox() : Text(text),
          selected: selected,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selected ? Colors.white : null),
          shape: color ? CircleBorder() : null,
          labelPadding: color ? EdgeInsets.all(0) : null,
          padding: color ? EdgeInsets.all(0) : null,
          avatar: color
              ? CursedCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundcolor: ColorHelperFunctions.getColor(text)!)
              : null,
          backgroundColor: color ? ColorHelperFunctions.getColor(text) : null,
        ),
      ],
    );
  }
}

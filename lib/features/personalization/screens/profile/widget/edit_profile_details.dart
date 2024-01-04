import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileEditDetails extends StatelessWidget {
  const ProfileEditDetails({
    super.key,
    required this.ontap,
    this.icon = Iconsax.arrow_right_34,
    required this.title,
    required this.value,
  });
  final VoidCallback ontap;
  final IconData icon;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(icon, size: 18))
          ],
        ),
      ),
    );
  }
}

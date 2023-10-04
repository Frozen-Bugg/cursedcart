import 'package:cursedcart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CursedSpace {
  static EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
      top: CursedeviceUtils.getStatusbarHeight() + 16,
      bottom: 24,
      left: 24,
      right: 24);
}

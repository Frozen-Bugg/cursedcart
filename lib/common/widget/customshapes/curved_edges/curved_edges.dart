import 'package:flutter/material.dart';

class CursedCurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final first = Offset(0, size.height - 20);
    final second = Offset(30, size.height - 20);
    path.quadraticBezierTo(first.dx, first.dy, second.dx, second.dy);

    final secondfirst = Offset(0, size.height - 20);
    final secondlast = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondfirst.dx, secondfirst.dy, secondlast.dx, secondlast.dy);

    final thirdfirst = Offset(size.width, size.height - 20);
    final thirdlast = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdfirst.dx, thirdfirst.dy, thirdlast.dx, thirdlast.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 30, size.height - 40, size.width / 3, size.height - 65);
    path.quadraticBezierTo(size.width - (size.width / 6) + 30,
        size.height - 120, size.width + 5, size.height - 5);
    path.lineTo(size.width + 30, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

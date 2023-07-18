import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 10, size.height - 10, size.width / 3, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 6) + 10,
        size.height - 100, size.width + 20, size.height - 30);
    path.lineTo(size.width + 20, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

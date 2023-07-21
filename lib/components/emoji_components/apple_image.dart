import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApplesImage extends StatelessWidget {
  const ApplesImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 34,
      right: 34,
      child: Opacity(
        opacity: 0.9,
        child: SvgPicture.asset(
          'assets/images/Group161.svg',
        ),
      ),
    );
  }
}

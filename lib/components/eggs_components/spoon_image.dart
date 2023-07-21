import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpoonImage extends StatelessWidget {
  const SpoonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Transform.translate(
        offset: const Offset(0, -60),
        child: Positioned(
          child: SvgPicture.asset('assets/images/Spoon.svg'),
        ),
      ),
    );
  }
}

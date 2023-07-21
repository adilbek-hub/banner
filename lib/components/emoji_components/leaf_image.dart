import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeafImage extends StatelessWidget {
  const LeafImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      child: SvgPicture.asset(
        'assets/images/leaf.svg',
      ),
    );
  }
}

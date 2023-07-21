import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClipPathImage extends StatelessWidget {
  const ClipPathImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/Vector(2).svg',
      width: MediaQuery.of(context).size.width,
    );
  }
}

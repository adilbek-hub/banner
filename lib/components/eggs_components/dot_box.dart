import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DotBox extends StatelessWidget {
  const DotBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Transform.translate(
        offset: const Offset(-40, 130),
        child: Positioned(
          child: SvgPicture.asset('assets/images/OBJECTS_1.svg'),
        ),
      ),
    );
  }
}

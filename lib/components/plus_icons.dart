import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlusIcons extends StatelessWidget {
  const PlusIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/images/Group268.svg',
      ),
    );
  }
}

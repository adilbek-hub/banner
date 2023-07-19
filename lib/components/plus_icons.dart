import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlusIcons extends StatelessWidget {
  const PlusIcons({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/images/Group268.svg',
      ),
    );
  }
}

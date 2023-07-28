import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackToIcon extends StatelessWidget {
  const BackToIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'assets/images/backIcon.svg',
          ),
        ),
      ),
    );
  }
}

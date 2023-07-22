import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackToIconInEmoji extends StatelessWidget {
  const BackToIconInEmoji({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'foodView');
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: SvgPicture.asset(
            'assets/images/BackTo.svg',
          ),
        ),
      ),
    );
  }
}

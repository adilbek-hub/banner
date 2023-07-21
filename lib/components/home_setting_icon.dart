import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSettingIcon extends StatelessWidget {
  const HomeSettingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Positioned(
        top: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/home.svg',
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/setting.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

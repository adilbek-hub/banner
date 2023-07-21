import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlugAndCircule extends StatelessWidget {
  const PlugAndCircule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/Group5.svg',
          ),
          const SizedBox(width: 120),
          Transform.translate(
            offset: const Offset(0, 40),
            child: SvgPicture.asset('assets/images/Plug.svg'),
          ),
        ],
      ),
    );
  }
}

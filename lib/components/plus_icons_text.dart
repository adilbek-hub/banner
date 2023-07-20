import 'package:flutter/material.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_sizes.dart';
import 'package:foods/constants/app_text_styles.dart';

class PlusIconsText extends StatelessWidget {
  const PlusIconsText({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PlusIcons(onTap: onTap),
        AppSizes.weight7,
        Text(text, style: AppTextStyles.textStyle),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foods/components/app_sizes.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_text_styles.dart';
import 'package:foods/constants/app_texts.dart';

class PlusIconsText extends StatelessWidget {
  const PlusIconsText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PlusIcons(),
        AppSizes.weight7,
        Text(text, style: AppTextStyles.textStyle),
      ],
    );
  }
}

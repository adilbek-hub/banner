import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/app_sizes.dart';
import 'package:foods/components/bottom_wave_clipper.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/components/plus_icons_text.dart';
import 'package:foods/constants/app_text_styles.dart';
import 'package:foods/constants/app_texts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/images/Vector.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const PlusIconsText(
              text: AppTexts.food,
            ),
            AppSizes.height10,
            const PlusIconsText(
              text: AppTexts.recipes,
            ),
            const PlusIconsText(
              text: AppTexts.water,
            ),
            AppSizes.height10,
            const PlusIconsText(
              text: AppTexts.sport,
            ),
            const PlusIconsText(
              text: AppTexts.calendar,
            ),
            AppSizes.height10,
            const PlusIconsText(
              text: AppTexts.freeTime,
            ),
            AppSizes.height10,
            const PlusIconsText(
              text: AppTexts.fellingWell,
            ),
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/GIRL.svg',
                ),
                SvgPicture.asset(
                  'assets/images/Vector(1).svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

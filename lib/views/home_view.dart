import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/bottom_wave_clipper.dart';

import 'package:foods/components/plus_icons_text.dart';
import 'package:foods/constants/app_sizes.dart';

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
        backgroundColor: Colors.white,
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
                          'assets/images/setting.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            PlusIconsText(
              onTap: () => Navigator.pushNamed(context, 'foodView'),
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
            Row(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(
                        'assets/images/GIRL.svg',
                      ),
                    ),
                    Positioned(
                      child: SvgPicture.asset('assets/images/Group.svg'),
                    ),
                    Positioned(
                      top: 170,
                      child: SvgPicture.asset(
                        'assets/images/Group5.svg',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SvgPicture.asset(
                    'assets/images/Group80.svg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

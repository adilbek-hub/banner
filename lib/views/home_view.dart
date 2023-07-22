import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:foods/components/plus_icons_text.dart';

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
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/menuClipPathImage.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/setting.svg',
                      ),
                    ),
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                      'assets/images/Wave.svg',
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: SvgPicture.asset(
                      'assets/images/leaf.svg',
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 90,
                    child: SvgPicture.asset(
                      'assets/images/Snake1.svg',
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 140,
                    child: SvgPicture.asset(
                      'assets/images/Snake2.svg',
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 215,
                    child: SvgPicture.asset(
                      'assets/images/Isolation_Mode.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'foodView');
                            },
                            child: const PlusIconsText(
                              text: AppTexts.food,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'recipesView');
                            },
                            child: const PlusIconsText(
                              text: AppTexts.recipes,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.water,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 120, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.sport,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 145, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.calendar,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 165, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.freeTime,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 155, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.freeTime,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    child: SvgPicture.asset(
                      'assets/images/GIRL.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    child: SvgPicture.asset(
                      'assets/images/Group.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                      'assets/images/Group5.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/images/Group80.svg',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

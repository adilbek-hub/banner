import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:foods/components/plus_icons_text.dart';

import 'package:foods/constants/app_texts.dart';
import 'package:foods/views/food_view.dart';

import '../models/time_foods.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    child: SvgPicture.asset(
                      'assets/images/menuClipPathImage.svg',
                      fit: BoxFit.cover,
                    ),
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
                    padding: const EdgeInsets.only(top: 200),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        FoodView(timeFoodsList: timeFoodsList),
                                  ));
                            },
                            child: const PlusIconsText(
                              text: AppTexts.food,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, top: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'recipesView');
                            },
                            child: const PlusIconsText(
                              text: AppTexts.recipes,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'water_view');
                            },
                            child: const PlusIconsText(
                              text: AppTexts.water,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 160, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.sport,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 185, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.calendar,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 180, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.freeTime,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 175, top: 10),
                          child: PlusIconsText(
                            text: AppTexts.freeTime,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -30,
                    bottom: 80,
                    child: SvgPicture.asset(
                      'assets/images/GIRL.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    child: SvgPicture.asset(
                      'assets/images/Group.svg',
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    child: SvgPicture.asset(
                      'assets/images/Group5.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
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

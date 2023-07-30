import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:foods/models/sport.dart';

import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';

class SportView2 extends StatelessWidget {
  const SportView2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff374b93),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/images/Recipes_clip_path.svg',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
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
              top: 50,
              right: 15,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/calendar_icon.svg',
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 34,
              right: 34,
              child: SvgPicture.asset(
                'assets/images/sport_logo.svg',
              ),
            ),
            Positioned(
              top: 130,
              left: 34,
              right: 34,
              child: Opacity(
                opacity: 0.8,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('sport_view3');
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xfffdfdfd),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            PlusIcons(onTap: () {
                              Navigator.pushNamed(
                                  context, 'recipes_classicOmelet');
                            }),
                            const SizedBox(width: 8),
                            const Text(
                              'New',
                              style: TextStyle(
                                color: AppColors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '28.06.23',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/plus.svg'),
                        const SizedBox(width: 10),
                        const Text(
                          AppTexts.yourExercise,
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    const Text(
                      AppTexts.time,
                      style: AppTextStyles.textStyle2,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 238,
              left: 60,
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/plus.svg'),
                  const SizedBox(width: 18),
                  const Text(
                    'exercise',
                    style: AppTextStyles.textStyle3,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 265,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/backIcon.svg'),
                    Text(
                      AppTexts.exercise,
                      style: AppTextStyles.textStyle2,
                    ),
                    SvgPicture.asset('assets/images/dumbbell.svg')
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 240,
              left: 20,
              child: SvgPicture.asset(
                'assets/images/chagylgan.svg',
                width: 30,
              ),
            ),
            Positioned(
              bottom: 280,
              right: 180,
              child: SvgPicture.asset(
                'assets/images/exclamation_mark.svg',
                width: 20,
              ),
            ),
            Positioned(
              bottom: 240,
              right: 0,
              child: SvgPicture.asset(
                'assets/images/run_boy.svg',
                width: 90,
              ),
            ),
            Positioned(
              bottom: 210,
              left: 50,
              child: SvgPicture.asset(
                'assets/images/exclamation_mark2.svg',
                width: 30,
              ),
            ),
            Positioned(
              bottom: 210,
              left: 100,
              child: SvgPicture.asset(
                'assets/images/yoga_girl.svg',
                width: 60,
              ),
            ),
            Positioned(
              bottom: 160,
              left: 20,
              child: SvgPicture.asset(
                'assets/images/h.svg',
              ),
              width: 40,
            ),
            Positioned(
              bottom: 0,
              child: SvgPicture.asset(
                'assets/images/sport_girl.svg',
                width: 250,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: SvgPicture.asset(
                'assets/images/sport_boy.svg',
                width: 200,
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                color: const Color(0xff374b93).withOpacity(0.6),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: SvgPicture.asset(
                'assets/images/dubelles.svg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290, left: 30),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 7.6),
                      itemCount: sportModel2.length,
                      itemBuilder: (context, index) {
                        final sports = sportModel2[index];
                        return ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 20, top: 5),
                          leading: SvgPicture.asset(
                              'assets/images/${sports.image}.svg'),
                          title: Text(
                            sports.name,
                            style: AppTextStyles.textStyle3,
                          ),
                        );
                      },
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

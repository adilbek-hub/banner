import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foods/constants/app_text_styles.dart';
import 'package:foods/constants/app_texts.dart';
import 'package:foods/models/time_foods.dart';
import '../components/plus_icons.dart';
import '../constants/app_colors.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key, required this.timeFoodsList});
  final List<TimeFoods> timeFoodsList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 60,
                height: 420,
                decoration: BoxDecoration(
                  color: const Color(0xffc2c4d8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/');
                          },
                          child:
                              SvgPicture.asset('assets/images/backIcon.svg')),
                    ),
                    ///////////////////////////////////////////////
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 37,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                AppTexts.time,
                                style: AppTextStyles.textStyle2,
                              ),
                              Text(
                                AppTexts.dishName,
                                style: AppTextStyles.textStyle2,
                              ),
                              Text(
                                AppTexts.emoji,
                                style: AppTextStyles.textStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            minLeadingWidth: 10,
                            leading: Text('${timeFoodsList[0].time}'),
                            title: Text('${timeFoodsList[0].time}'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
// Clippath
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/images/Vector(2).svg',
                width: MediaQuery.of(context).size.width,
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
              top: 15,
              left: 15,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
              ),
            ),
            Positioned(
              top: 65,
              child: SvgPicture.asset(
                'assets/images/leaf.svg',
              ),
            ),
            Positioned(
              right: 15,
              top: 145,
              child: SvgPicture.asset(
                'assets/images/OBJECTS_1.svg',
              ),
            ),
            // // Container//////////////////////////

            Positioned(
              top: 125,
              left: 30,
              right: 22,
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xfffdfdfd),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            PlusIcons(onTap: () {}),
                            const SizedBox(width: 132),
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
              left: 0,
              top: 340,
              child: SvgPicture.asset(
                'assets/images/Spoon.svg',
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: SvgPicture.asset(
            //     'assets/images/Group5.svg',
            //   ),
            // ),
            Positioned(
                bottom: 0,
                left: 0,
                child: SvgPicture.asset('assets/images/Group5.svg')),

            Positioned(
                bottom: -20,
                right: 70,
                child: SvgPicture.asset('assets/images/Plug.svg')),
          ],
        ),
      ),
    );
  }
}

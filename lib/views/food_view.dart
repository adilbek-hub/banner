import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/big_grey_container/back_to_icon.dart';
import 'package:foods/components/big_grey_container/pick_on_container.dart';
import 'package:foods/components/bottom_wave_clipper.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:foods/constants/app_sizes.dart';
import 'package:foods/models/time_foods.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key, required this.timeFoodsList});
  final List<TimeFoods> timeFoodsList;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ImageContainerStack(),
      ),
    );
  }
}

class ImageContainerStack extends StatelessWidget {
  const ImageContainerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BottomWaveClipper(),
          child: Container(
            color: const Color(0xff011b32),
            width: double.infinity,
            height: 200,
          ),
        ),
        Padding(
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
        ),
        Positioned(
          top: 70,
          child: SvgPicture.asset(
            'assets/images/leaf.svg',
          ),
        ),
        Positioned(
          top: 130,
          left: 34,
          right: 34,
          child: Opacity(
            opacity: 0.8,
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
                      PlusIcons(onTap: () {}),
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
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 65,
            height: 456,
            decoration: BoxDecoration(
              color: const Color(0xffc2c4d8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const BackToIcon(),
                const PickOnContainer(),
                SizedBox(
                  height: 350,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            timeFoodsList[0].time ?? '',
                            style: const TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            timeFoodsList[0].nameFood ?? '',
                            style: const TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SvgPicture.asset(
                              'assets/images/${timeFoodsList[0].foodImage}.svg'),
                        ],
                      ),
                      AppSizes.height30,
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              timeFoodsList[1].time ?? '',
                              style: const TextStyle(
                                color: AppColors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSizes.height30,
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              timeFoodsList[2].time ?? '',
                              style: const TextStyle(
                                color: AppColors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSizes.height30,
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              timeFoodsList[3].time ?? '',
                              style: const TextStyle(
                                color: AppColors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Transform.translate(
            offset: const Offset(0, -60),
            child: Positioned(
              child: SvgPicture.asset('assets/images/Spoon.svg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            children: [
              SvgPicture.asset('assets/images/Group5.svg'),
              const SizedBox(width: 120),
              Transform.translate(
                offset: const Offset(0, 40),
                child: SvgPicture.asset('assets/images/Plug.svg'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

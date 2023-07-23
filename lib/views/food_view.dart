import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/big_grey_container/back_to_icon.dart';
import 'package:foods/components/big_grey_container/pick_on_container.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:foods/constants/app_sizes.dart';
import 'package:foods/models/time_foods.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key, required this.timeFoodsList});
  final List<TimeFoods> timeFoodsList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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

                  SvgPicture.asset(
                    'assets/images/Vector(2).svg',
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
                    top: 135,
                    child: SvgPicture.asset(
                      'assets/images/OBJECTS_1.svg',
                    ),
                  ),
                  // Container//////////////////////////

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
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                      'assets/images/Group5.svg',
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}

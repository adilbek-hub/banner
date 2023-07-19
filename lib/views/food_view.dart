import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/bottom_wave_clipper.dart';
import 'package:foods/components/plus_icons.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                Positioned(
                  top: 70,
                  child: SvgPicture.asset(
                    'assets/images/leaf.svg',
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 22,
                  right: 22,
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
                                  color: Color(0xff374B93),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '28.06.23',
                            style: TextStyle(
                              color: Color(0xff374B93),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 200),
            Stack(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Spoon.svg',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 100,
                  child: Container(
                    height: 250,
                    width: 456,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Group5.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/Frame1.svg',
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

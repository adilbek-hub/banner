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
                    color: Colors.black,
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
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/images/leaf.svg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
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
            Container(
              height: 456,
              width: 456,
              decoration: BoxDecoration(
                color: Color(0xffc2c4d8),
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_colors.dart';

class RecipesClassicOmelet2 extends StatelessWidget {
  const RecipesClassicOmelet2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  left: 45,
                  child: SvgPicture.asset('assets/images/Character.svg')),

              Positioned(
                top: 210,
                left: 32.5,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 65,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: const Color(0xffc2c4d8).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/pencl.svg'),
                                const SizedBox(width: 10),
                                Text(
                                  'classic omelet'.toUpperCase(),
                                  style: const TextStyle(
                                    color: Color(0xff374b93),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '28.06.23',
                              style: TextStyle(
                                color: Color(0xff374b93),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 39,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/plus.svg'),
                              const Text(
                                'new',
                                style: TextStyle(
                                  color: AppColors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 10,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Directions',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/images/Recipes_clip_path.svg',
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
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: SvgPicture.asset(
                    'assets/images/home.svg',
                  ),
                ),
              ),
              Positioned(
                top: 92,
                left: 80,
                child: SvgPicture.asset(
                  'assets/images/Сarrots.svg',
                ),
              ),
              Positioned(
                top: 95,
                left: 115,
                child: SvgPicture.asset(
                  'assets/images/Mushrooms.svg',
                ),
              ),
              Positioned(
                top: 55,
                left: 34,
                right: 34,
                child: SvgPicture.asset(
                  'assets/images/plate.svg',
                ),
              ),
              /////////////////////////////////////
              Positioned(
                right: 40,
                top: 140,
                child: Opacity(
                  opacity: 0.9,
                  child: SvgPicture.asset(
                    'assets/images/Pear.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

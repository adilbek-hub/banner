import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterView3 extends StatelessWidget {
  const WaterView3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 72),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 56,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          Container(
                            width: 367,
                            height: 101,
                            decoration: BoxDecoration(
                              color: const Color(0xffb6b8d2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'No, water with lemon is just water with lemon.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
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
                          ),
                          Container(
                            width: 367,
                            height: 47,
                            decoration: BoxDecoration(
                              color: const Color(0xffb6b8d2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'No, water with lemon is just water with lemon.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 53,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          Container(
                            width: 367,
                            height: 53,
                            decoration: BoxDecoration(
                              color: const Color(0xffb6b8d2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'No, water with lemon is just water with lemon.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
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
                          ),
                          Container(
                            width: 367,
                            height: 422,
                            decoration: BoxDecoration(
                              color: const Color(0xffb6b8d2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'No, water with lemon is just water with lemon.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff67bbc9), Color(0xffd3dfde)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                          Container(
                            width: 367,
                            height: 388,
                            decoration: BoxDecoration(
                              color: const Color(0xffb6b8d2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'No, water with lemon is just water with lemon.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/Isolation_Mode(1).svg',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 170,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('water_view4');
                      },
                      child: SvgPicture.asset(
                        'assets/images/small_glass_of_milk.svg',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      height: 72,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.containerBlue,
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
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: SvgPicture.asset(
                        'assets/images/home.svg',
                      ),
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

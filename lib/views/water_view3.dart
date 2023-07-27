import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/plus_icons.dart';

class WaterView3 extends StatelessWidget {
  const WaterView3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 34,
              right: 34,
              child: Container(
                height: 50,
                width: double.infinity,
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
                          Navigator.pushNamed(context, 'recipes_classicOmelet');
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
            /////////////////////////////////////////////////////////////////
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/images/water_path.svg',
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
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
              ),
            ),
            //////////////////////////////////////////////////////////////////
            Positioned(
              top: 70,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
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
            ),
            //////////////////////////////////////////////////////////////////
            Positioned(
              top: 125,
              left: 15,
              child: Container(
                width: 383,
                height: 112,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'If you are used to it and it doesn\'t make you feel uncomfortable - drink it, it\'s not bad for you. If you haven\'t been drinking so much before, it\'s disturbing and you have other symptoms, you should see an endocrinologist.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            //////////////////////////////////////////////////
            Positioned(
              top: 125,
              left: 15,
              child: Container(
                width: 383,
                height: 112,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'If you are used to it and it doesn\'t make you feel uncomfortable - drink it, it\'s not bad for you. If you haven\'t been drinking so much before, it\'s disturbing and you have other symptoms, you should see an endocrinologist.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////
            Positioned(
              top: 237,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
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
            ),
            ///////////////////////////////////////////////////////////////
            Positioned(
              top: 293,
              left: 15,
              child: Container(
                width: 383,
                height: 47,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
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
            ),
            //////////////////////////////////////////////////
            Positioned(
              top: 340,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
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
            ),
            //////////////////////////////////////////////
            Positioned(
              top: 396,
              left: 15,
              child: Container(
                width: 383,
                height: 51,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
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
            ),
            ////////////////////////////////////////////////////////////
            Positioned(
              top: 447,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 37,
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
            ),
            ///////////////////////////////////////////////////////////
            Positioned(
              bottom: 193,
              left: 15,
              child: Container(
                width: 383,
                height: 101,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
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
            ),
            //////////////////////////////////////////////////////////////
            Positioned(
              bottom: 159,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 34,
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
            ),
          ],
        ),
      ),
    );
  }
}

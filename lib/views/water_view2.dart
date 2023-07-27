import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterView2 extends StatelessWidget {
  const WaterView2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Первый серый контейнер
            Positioned(
              top: 135,
              left: 35,
              child: Container(
                width: 343,
                height: 112,
                decoration: BoxDecoration(
                  color: const Color(0xffb6b8d2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Only the amount of total fluits, including water, other drinks and wather, other drinks and wather from meals is officially recomended',
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
            //Центральный контейнер
            Positioned(
              top: 260,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 254,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff67bbc9),
                      Color(0xffd3dfde),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Тексты внутри центр. контейнера
                      Row(children: [
                        Text(
                          '2.7',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Litres for women;',
                          style: GoogleFonts.lato(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                      Row(children: [
                        Text(
                          '3.7',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'litres for men;',
                          style: GoogleFonts.lato(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                      Row(children: [
                        Text(
                          '20%',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'fluid from food,',
                          style: GoogleFonts.lato(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ]),

                      Row(
                        children: [
                          Text(
                            '80%',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'from drink,',
                            style: GoogleFonts.lato(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Drink as much water as you want, based on the feeling of thirst and the colour of your urine (dark - you should drink more).',
                        style: GoogleFonts.lato(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Стаканы на левом крае
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/images/water_circular.png',
                  width: 130,
                )),
            Positioned(
                bottom: 190,
                child: Image.asset(
                  'assets/images/small_glass.png',
                  width: 65,
                )),
            Positioned(
                bottom: 40,
                left: -5,
                child: Image.asset(
                  'assets/images/Glass.png',
                  width: 65,
                )),

            Positioned(
                bottom: 190,
                right: 100,
                child: Text(
                  'frequent questions\n about wather'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff9be75f)),
                )),
            Positioned(
                bottom: 138,
                right: 45,
                child: Text(
                  "I can't even drink two glasses of water a\n day. Is that bad for you?"
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: AppColors.blue,
                  ),
                )),
            Positioned(
                bottom: 69,
                right: 70,
                child: Text(
                  "No, so you get your fluids from\n other sources. But, remember, pure\n water is always preferable."
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: AppColors.blue,
                  ),
                )),

            //Стаканы на правом крае
            Positioned(
                bottom: 195,
                right: 20,
                child: SvgPicture.asset(
                  'assets/images/small_glass_to_right.svg',
                )),
            Positioned(
                bottom: 20,
                right: 40,
                child: SvgPicture.asset(
                  'assets/images/bottl_of_milk2.svg',
                  width: 65,
                )),
            Positioned(
                bottom: 10,
                right: 90,
                child: SvgPicture.asset(
                  'assets/images/glass_of_milk2.svg',
                  width: 65,
                )),
            // Path / Иконка home setting + milk картинка
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/images/Recipes_clip_path.svg',
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
            Positioned(
              top: 40,
              left: 34,
              right: 34,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'water_view3');
                },
                child: SvgPicture.asset(
                  'assets/images/milk.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

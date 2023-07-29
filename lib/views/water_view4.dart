import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaterView4 extends StatelessWidget {
  const WaterView4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> weekNames = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/bgImage.png',
              ),
            ),
          ),
          child: Stack(
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
              Positioned(
                bottom: 10,
                right: 30,
                child: SvgPicture.asset('assets/images/bottle_of_milk.svg'),
                width: 50,
              ),
              Positioned(
                bottom: 5,
                right: 70,
                child: SvgPicture.asset(
                  'assets/images/big_glass.svg',
                  width: 50,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/water_circular.png',
                  width: 90,
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                child: SvgPicture.asset(
                  'assets/images/big_glass.svg',
                  width: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 190,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 340,
                        width: 121,
                        decoration: const BoxDecoration(
                          color: Color(0xff67bbc9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: ListView.builder(
                            itemCount: weekNames.length,
                            itemBuilder: (context, index) {
                              final names = weekNames[index];
                              return ListTile(
                                title: Text(names),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: Container(
                          height: 340,
                          width: 246,
                          decoration: const BoxDecoration(
                            color: Color(0xffd3dfde),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: GridView.builder(
                              itemCount: 50,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 7),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    top: 5,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/images/small_glass_of_milk.svg'),
                                );
                              })),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

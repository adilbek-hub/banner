import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/constants/app_colors.dart';

class EggsView extends StatelessWidget {
  const EggsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  //container
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 65,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: const Color(0xffc2c4d8).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 200),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 23),
                                child: SvgPicture.asset(
                                  'assets/images/pencl.svg',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('09:00'),
                              Text('eggs with becon'),
                              Text('28.06.23'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 39,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff67bbc9),
                                    Color(0xffd3dfde)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.only(left: 23)),
                                  SvgPicture.asset(
                                    'assets/images/plus.svg',
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'New',
                                    style: TextStyle(
                                      color: AppColors.blue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
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
                    left: 0,
                    top: 340,
                    child: SvgPicture.asset(
                      'assets/images/Spoon.svg',
                    ),
                  ),

                  Positioned(
                    top: 70,
                    child: SvgPicture.asset(
                      'assets/images/leaf.svg',
                    ),
                  ),
                  Positioned(
                    right: 28,
                    top: 135,
                    child: SvgPicture.asset(
                      'assets/images/OBJECTS_1.svg',
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 34,
                    right: 34,
                    child: Opacity(
                      opacity: 0.9,
                      child: SvgPicture.asset(
                        'assets/images/Group161.svg',
                      ),
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

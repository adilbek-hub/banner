import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/models/time_foods.dart';
import 'package:foods/views/eggs_view.dart';

import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';

class EmojiView extends StatelessWidget {
  const EmojiView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // первый слой контейнера
                  Transform.translate(
                    offset: const Offset(0.0, 80),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 65,
                        height: 700,
                        decoration: BoxDecoration(
                          color: const Color(0xffc2c4d8).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  // Нижний левый картинка
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SvgPicture.asset('assets/images/Group5.svg')),
                  //Нижний правый картинка
                  Positioned(
                      bottom: -20,
                      right: 70,
                      child: SvgPicture.asset('assets/images/Plug.svg')),
                  // Второй слой контейнера
                  Transform.translate(
                    offset: const Offset(0.0, 120),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 65,
                        height: 670,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 60),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 37,
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
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed('food_view');
                                          },
                                          child: SvgPicture.asset(
                                              'assets/images/backIcon.svg'),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 100),
                                          child: Text(
                                            AppTexts.emoji,
                                            style: AppTextStyles.textStyle2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 1.6),
                                    itemCount: 18,
                                    itemBuilder: (context, index) {
                                      final emoji = emogiList[index];
                                      return InkWell(
                                        onTap: () {
                                          if (emoji == emoji4) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const EggsView(),
                                              ),
                                            );
                                          }
                                        },
                                        child: ListTile(
                                          contentPadding: const EdgeInsets.only(
                                              left: 20, top: 5),
                                          leading: SvgPicture.asset(
                                              'assets/foods/${emoji.foodImage}.svg'),
                                          title: Text(
                                            '${emoji.nameFood}',
                                            style:
                                                const TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      );
                                    })),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/Vector(2).svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    left: 0,
                    top: 340,
                    child: SvgPicture.asset(
                      'assets/images/Spoon.svg',
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
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/home.svg',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

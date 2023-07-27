import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/plus_icons.dart';
import 'package:foods/constants/app_colors.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      'assets/images/plus.svg',
      'assets/images/plus.svg',
      'assets/images/plus.svg',
      'assets/images/plus.svg',
      'assets/images/plus.svg',
      'assets/images/plus.svg',
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: SvgPicture.asset(
                        'assets/images/object_board.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //container
                  Center(
                    child: Container(
                      color: Colors.white.withOpacity(0.4),
                      width: double.infinity,
                      height: 480,
                    ),
                  ),
                  //container
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 65,
                      height: MediaQuery.of(context).size.height - 440,
                      decoration: BoxDecoration(
                        color: const Color(0xffa49fae).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Recipe name'.toUpperCase(),
                            style: const TextStyle(
                              color: Color(0xff344b93),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
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
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'ingredients',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'quantity',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: icons.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final icon = icons[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: 40,
                                        child: ListTile(
                                          leading: SvgPicture.asset(icon),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
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
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/home.svg',
                      ),
                    ),
                  ),

                  // New container
                  Positioned(
                    top: 155,
                    left: 34,
                    right: 34,
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
                                PlusIcons(onTap: () {
                                  Navigator.pushNamed(
                                      context, 'recipes_classicOmelet');
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
                    child: Opacity(
                      opacity: 0.9,
                      child: SvgPicture.asset(
                        'assets/images/book.svg',
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 33,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 65,
                      height: MediaQuery.of(context).size.height - 610,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff374B93)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15, left: 20),
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

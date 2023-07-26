import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_colors.dart';

class RecipesClassicOmelet extends StatelessWidget {
  const RecipesClassicOmelet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/board_with_vegetables.png'),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    height: MediaQuery.of(context).size.height - 445,
                    decoration: BoxDecoration(
                      color: const Color(0xffc2c4d8).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'classic omelet'.toUpperCase(),
                          style: const TextStyle(
                            color: Color(0xff374b93),
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
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
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
                                        leading: Text(index.toString()),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 33,
                  child: Container(
                      width: MediaQuery.of(context).size.width - 65,
                      height: MediaQuery.of(context).size.height - 560,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff374B93)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
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
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              'Stir up eggs in a bowl pouring milk into it little by little. You should just blend the yolk and the white, not froth it up. Add some salt.Pour some vegetable oil on a frying pan and accurately turn the pan so that the oil will spread all over the surface. Make it hot and pour the egg-and-milk blend. Spread it evenly over the pan.Fry the omelet for 2 minutes at each side. Serve hot.',
                              style: TextStyle(
                                color: Color(0xff374b93),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      )),
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
                      'assets/images/pot.svg',
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 165,
                  child: Opacity(
                    opacity: 0.9,
                    child: SvgPicture.asset(
                      'assets/images/BackTo.svg',
                    ),
                  ),
                ),
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
      ),
    );
  }
}

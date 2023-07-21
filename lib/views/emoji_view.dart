import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods/components/big_grey_container/back_to_icon.dart';
import 'package:foods/components/big_grey_container/emoji_container.dart';
import 'package:foods/components/big_grey_container/pick_on_container.dart';
import 'package:foods/components/bottom_wave_clipper.dart';

import 'package:foods/models/time_foods.dart';

class EmojiView extends StatelessWidget {
  const EmojiView({
    super.key,
  });
  // final List<TimeFoods> timeFoodsList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ImageContainerStack(
          emogiList: emogiList,
        ),
      ),
    );
  }
}

class ImageContainerStack extends StatelessWidget {
  const ImageContainerStack({super.key, required this.emogiList});
  final List<TimeFoods> emogiList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BottomWaveClipper(),
          child: Container(
            color: const Color(0xff011b3e),
            width: double.infinity,
            height: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Positioned(
            top: 0,
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
        ),
        Positioned(
          top: 70,
          child: SvgPicture.asset(
            'assets/images/leaf.svg',
          ),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            children: [
              SvgPicture.asset('assets/images/Group5.svg'),
              const SizedBox(width: 120),
              Transform.translate(
                offset: const Offset(0, 40),
                child: SvgPicture.asset('assets/images/Plug.svg'),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, 70),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 65,
              height: 700,
              decoration: BoxDecoration(
                color: const Color(0xffc2c4d8).withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const BackToIcon(),
                  const EmojiContainer(),
                  Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 1.6),
                          itemCount: 18,
                          itemBuilder: (context, index) {
                            final emoji = emogiList[index];
                            return ListTile(
                              leading: SvgPicture.asset(
                                  'assets/foods/${emoji.foodImage}.svg'),
                              title: Text('${emoji.nameFood}'),
                            );
                          })),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 34,
          right: 34,
          child: Opacity(
            opacity: 0.9,
            child: SvgPicture.asset(
              'assets/images/Group161.svg',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Transform.translate(
            offset: const Offset(0, -60),
            child: Positioned(
              child: SvgPicture.asset('assets/images/Spoon.svg'),
            ),
          ),
        ),
      ],
    );
  }
}

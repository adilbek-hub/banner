import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:foods/components/emoji_components/emoji_container.dart';
import 'package:foods/models/time_foods.dart';

class CenterContainerEggs extends StatelessWidget {
  const CenterContainerEggs({
    super.key,
    required this.emogiList,
  });

  final List<TimeFoods> emogiList;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0.0, 80),
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
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: SvgPicture.asset(
                      'assets/images/BackTo.svg',
                    ),
                  ),
                ),
              ),
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
    );
  }
}

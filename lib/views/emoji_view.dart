import 'package:flutter/material.dart';
import 'package:foods/components/emoji_components/apple_image.dart';
import 'package:foods/components/emoji_components/center_container.dart';
import 'package:foods/components/emoji_components/clippath_image.dart';
import 'package:foods/components/emoji_components/dot_box.dart';
import 'package:foods/components/emoji_components/leaf_image.dart';
import 'package:foods/components/emoji_components/plug_and_circule.dart';
import 'package:foods/components/emoji_components/spoon_image.dart';
import 'package:foods/components/home_setting_icon.dart';

import 'package:foods/models/time_foods.dart';

class EmojiView extends StatelessWidget {
  const EmojiView({super.key});
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
        // Последные картины Вилка и ?? в заде центрального контейнера, они внутри Row.
        const PlugAndCircule(),
        // Центральный контейнер внутри с иконкой, уским контейнером и  GridView.builder.
        CenterContainer(emogiList: emogiList),
        // Вверхний ClipPathImage
        const ClipPathImage(),
        // Иконки для клик вверхний внутри на Row
        const HomeSettingIcon(),
        // Картинка на левой стороне листок
        const LeafImage(),
        // Картинка на центральной стороне яблоки внутри круга
        const ApplesImage(),
        // Точки квадрат
        const DotBox(),
        // Картинка ложка
        const SpoonImage(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foods/constants/app_colors.dart';

class EmojiContainer extends StatelessWidget {
  const EmojiContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
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
                'emoji',
                style: TextStyle(color: AppColors.blue, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

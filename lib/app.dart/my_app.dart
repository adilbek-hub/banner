import 'package:flutter/material.dart';
import 'package:foods/models/sport.dart';
import 'package:foods/models/time_foods.dart';
import 'package:foods/views/food_view.dart';
import 'package:foods/views/home_view.dart';
import 'package:foods/views/recipes_view.dart';
import 'package:foods/views/sport_view.dart';
import 'package:foods/views/sport_view2.dart';
import 'package:foods/views/sport_view3.dart';
import 'package:foods/views/water_view3.dart';
import 'package:foods/views/water_view4.dart';

import '../views/emoji_view.dart';
import '../views/recipes_classic_omelet_view.dart';
import '../views/recipes_classic_omelet_view2.dart';
import '../views/water_view.dart';
import '../views/water_view2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeView(),
        'food_view': (context) => FoodView(
              timeFoodsList: timeFoodsList,
            ),
        'emoji_view': (context) => const EmojiView(),
        'recipesView': (context) => const RecipesView(),
        'recipes_classicOmelet': (context) => const RecipesClassicOmelet(),
        'recipes_classicOmelet2': (context) => const RecipesClassicOmelet2(),
        'water_view': (context) => const WaterView(),
        'water_view2': (context) => const WaterView2(),
        'water_view3': (context) => const WaterView3(),
        'water_view4': (context) => const WaterView4(),
        'sport_view': (context) => SportView(
              oneTwoList: oneTwoList,
            ),
        'sport_view2': (context) => const SportView2(),
        'sport_view3': (context) => const SportView3(),
      },
    );
  }
}

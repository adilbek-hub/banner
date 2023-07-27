import 'package:flutter/material.dart';
import 'package:foods/models/time_foods.dart';
import 'package:foods/views/food_view.dart';
import 'package:foods/views/home_view.dart';
import 'package:foods/views/recipes_view.dart';

import '../views/recipes_classic_omelet_view.dart';
import '../views/recipes_classic_omelet_view2.dart';

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
        'foodView': (context) => FoodView(
              timeFoodsList: timeFoodsList,
            ),
        'recipesView': (context) => const RecipesView(),
        'recipes_classicOmelet': (context) => const RecipesClassicOmelet(),
        'recipes_classicOmelet2': (context) => const RecipesClassicOmelet2(),
      },
    );
  }
}

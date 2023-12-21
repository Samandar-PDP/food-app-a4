import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/meal.dart';
import 'package:food_app/meal_detail.dart';
import 'package:food_app/meal_item.dart';

import 'category.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: mealList[category.id].length,
        itemBuilder: (context, index) {
          final currentMeal = mealList[category.id][index];
          return MealItem(meal: currentMeal, onClick: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => MealDetailScreen(meal: currentMeal)));
          });
        },
      ),
    );
  }
}

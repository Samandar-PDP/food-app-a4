import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category.dart';
import 'package:food_app/meals_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: categoryList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: kIsWeb ? 4 : 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 3 / 2
          ),
          itemBuilder: (context, index) {
            final currentCategory = categoryList[index]; // 0
            return InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MealsScreen(category: currentCategory)));
              },
              child: Ink(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      currentCategory.color.withOpacity(0.6),
                      currentCategory.color.withOpacity(0.9),
                    ]
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(currentCategory.title, style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            );
          },
        ),
      ),
    );
  }
}

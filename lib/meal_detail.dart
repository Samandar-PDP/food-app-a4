import 'package:flutter/material.dart';
import 'package:food_app/meal.dart';
import 'package:google_fonts/google_fonts.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(meal.image, width: double.infinity, height: 300,fit: BoxFit.cover),
              const SizedBox(height: 10),
              const Text("Ingredients",style: TextStyle(fontSize: 22,color: Colors.deepOrange)),
              const SizedBox(height: 10),
              for(String i in meal.ingredients)
                Text(i,style: GoogleFonts.bitter(
                  fontSize: 18
                ),),
              const SizedBox(height: 10),
              const Text("Steps",style: TextStyle(fontSize: 22,color: Colors.deepOrange)),
              const SizedBox(height: 10),
              for(String i in meal.steps)
                Text(i,style: GoogleFonts.bitter(
                    fontSize: 18
                ),),
        
            ],
          ),
        ),
      ),
    );
  }
}

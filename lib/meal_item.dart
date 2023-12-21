import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onClick});
  final Meal meal;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            child: Stack(
              children: [
                ClipRRect(
            borderRadius: BorderRadius.circular(12),
                    child: Image.network(meal.image,fit: BoxFit.fill, width: double.infinity, height: 250,)),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(meal.title, style: const TextStyle(fontSize: 20,color: Colors.white)),
                          const SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _iconText(meal.duration, Icons.timelapse),
                              _iconText(meal.type.name, CupertinoIcons.star),
                              _iconText(meal.price.toString(), Icons.attach_money),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _iconText(String title, IconData iconData) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData),
        const SizedBox(width: 6),
        Text(title)
      ],
    );
  }
}

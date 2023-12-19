import 'package:flutter/material.dart';

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
    );
  }
}

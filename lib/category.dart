import 'package:flutter/material.dart';

class Category {
  int id;
  String title;
  Color color;

  Category({required this.id,
    required this.title,
    required this.color});
}
final categoryList = [
  Category(id: 0, title: "Quyuq ovqat", color: Colors.deepOrange),
  Category(id: 1, title: "Suyuq ovqat", color: Colors.blue),
  Category(id: 2, title: "Shirinliklar", color: Colors.green),
  Category(id: 3, title: "Fast-food", color: Colors.blueGrey),
  Category(id: 4, title: "Ichimliklar", color: Colors.yellow),
  Category(id: 5, title: "Xamir ovqat", color: Colors.red),
];

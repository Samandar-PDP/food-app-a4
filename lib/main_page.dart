import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category_screen.dart';
import 'package:food_app/favorite_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;
  final _screens = const [
    CategoryScreen(),
    FavoriteScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _selectedIndex == 0 ? "Categories" : "Favorites"
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset('assets/img/food.png',width: 120,height: 120,),
            const SizedBox(height: 10),
            Text("Chuchvara Group")
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: ''
          ),
        ],
      ),
    );
  }
}

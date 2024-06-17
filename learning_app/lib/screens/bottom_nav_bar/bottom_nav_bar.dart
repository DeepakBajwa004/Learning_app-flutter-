

import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen/home_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BotttomNavBar extends StatefulWidget {

  @override
  _BotttomNavBarState createState() => _BotttomNavBarState();
}

class _BotttomNavBarState extends State<BotttomNavBar> {
  var _currentIndex = 0;


  final _screens =[
    HomeScreen(),
     Text("Like"),
     Text("Search"),
     Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: _screens [_currentIndex],
    );

  }
}
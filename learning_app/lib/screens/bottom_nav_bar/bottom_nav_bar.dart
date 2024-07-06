

import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen/home_screen.dart';
import 'package:learning_app/screens/my_courses/my_courses.dart';
import 'package:learning_app/screens/profile/profile_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BotttomNavBar extends StatefulWidget {

  @override
  _BotttomNavBarState createState() => _BotttomNavBarState();
}

class _BotttomNavBarState extends State<BotttomNavBar> {
  var _currentIndex = 0;


  final _screens =[
    HomeScreen(),
     MyCourses(),
     ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.blueAccent,
              unselectedColor: Colors.blue
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text("Courses"),
            selectedColor: Colors.orange,
              unselectedColor: Colors.orangeAccent
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person,),
            title: Text("Profile"),
            selectedColor: Colors.deepPurpleAccent,
            unselectedColor: Colors.deepPurple
          ),
        ],
      ),
      body: _screens [_currentIndex],
    );

  }
}
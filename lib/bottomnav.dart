// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_field, camel_case_types, library_private_types_in_public_api

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'addpage.dart'; // Replace 'your_project_name' with your actual project name
import 'home.dart'; // Replace 'your_project_name' with your actual project name
import 'profile.dart'; // Replace 'your_project_name' with your actual project name

class BottomNav_Bar extends StatefulWidget {
  @override
  _BottomNav_BarState createState() => _BottomNav_BarState();
}

class _BottomNav_BarState extends State<BottomNav_Bar>{
  List<Widget> _naviagtionItem = [
    Icon(Icons.home, size: 30.0,),
    Icon(Icons.add_box_outlined, size: 30.0,),
    Icon(Icons.person, size: 30.0,),
    Icon(Icons.settings, size: 30.0,),
  ];

  int _currentIndex = 0; // Track current page
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    HOMEPAGE(),
    AddPage(),
    ProfilePage(),
    //SettingsPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index; // Update index when swiped
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: _naviagtionItem,
        height: 45,
        backgroundColor: Color.fromARGB(255, 92, 62, 102),
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update index on tap
          });
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        }
      ),
    );
  }

}
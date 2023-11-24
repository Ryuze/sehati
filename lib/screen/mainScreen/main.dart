import 'package:flutter/material.dart';

import './widgets/tracker.dart';
import './widgets/achievement.dart';

enum NavItem {
  home,
  achievement
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedItem = NavItem.home.index;
  final List<Widget> _pages = [
    const MainTrackerGrid(),
    const AchievementGrid()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        currentIndex: _selectedItem,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            _selectedItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedItem == NavItem.home.index ? Icons.home : Icons.home_outlined),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedItem == NavItem.achievement.index ? Icons.bookmarks : Icons.bookmarks_outlined),
            label: "Achivement"
          ),
        ],
      ),
    );
  }
}



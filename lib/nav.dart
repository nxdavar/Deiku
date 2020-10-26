import 'package:flutter/material.dart';
import 'package:vitamindtime/home_screen.dart';
import 'package:vitamindtime/leaderboard_screen.dart';
import 'package:vitamindtime/profile_screen.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vitamindtime/test_screen.dart';
import 'package:vitamindtime/activity_check.dart';

class Nav extends StatefulWidget {
  static const String id = 'navigation';
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    LeaderBoard(),
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const APP_BAR_COLOR = const Color(0xFF91B2BE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APP_BAR_COLOR,
        title: Text(
          'DEIKU',
          style: TextStyle(fontSize: 24.0, letterSpacing: 1.5),
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), title: Text('Leaderboard')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        backgroundColor: APP_BAR_COLOR,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ninja_basic/screens/home_screen.dart';
import 'package:ninja_basic/screens/profile_screen.dart';
import 'package:ninja_basic/screens/setting_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  // Method to handle navigation from drawer
  void _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); // close drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Root Screen with Drawer')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              selected: _selectedIndex == 1,
              onTap: () => _onSelectItem(1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              selected: _selectedIndex == 2,
              onTap: () => _onSelectItem(2),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

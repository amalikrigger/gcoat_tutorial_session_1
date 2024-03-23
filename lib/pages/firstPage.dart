import 'package:flutter/material.dart';
import 'package:gcoat_tutorial_session_1/pages/home.dart';
import 'package:gcoat_tutorial_session_1/pages/profile.dart';
import 'package:gcoat_tutorial_session_1/pages/settings.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List _pages = [
    const HomePage(),
    const SettingsPage(),
    const ProfilePage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('First Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(Icons.heart_broken),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('H O M E'),
              onTap: () => Navigator.pushNamed(context, 'homePage'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S E T T I N G S'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'settingsPage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('P R O F I L E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'profilePage');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'SETTINGS'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}

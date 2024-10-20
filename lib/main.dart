import 'package:flutter/material.dart';
import 'package:shyam_project/menu2.dart';
import 'package:shyam_project/search.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MenuScreen(),
    const SearchScreen(),
    const Menu2Screen(),
    NoScreen(),
    NoScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(
                'assets/icons/menu_icon.png', 'assets/icons/menu_icon.png', 0),
            _buildIconButton('assets/icons/search_icon.png',
                'assets/icons/search_yellow.png', 1),
            _buildIconButton(
                'assets/icons/home_icon.png', 'assets/icons/home_icon.png', 2),
                _buildIconButton(
                'assets/icons/location_favourite.png', 'assets/icons/location_favourite.png', 3),
                _buildIconButton(
                'assets/icons/solar_history_linear.png', 'assets/icons/solar_history_linear.png', 4),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String iconData, String SelectediconData, int index) {
    return IconButton(
      icon: Stack(
        children: [
          _currentIndex == index
              ?index>=2?Image.asset(
                  _currentIndex == index ? SelectediconData : iconData,
                  height: 20,
                  width: 20,
                ): Container(
                  padding: const EdgeInsets.all(9),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: Image.asset(
                      _currentIndex == index ? SelectediconData : iconData,
                      height: 25,
                      width: 25),
                )
              : Image.asset(
                  _currentIndex == index ? SelectediconData : iconData,
                  height: 20,
                  width: 20,
                  color: _currentIndex == index ? Colors.white : Colors.grey,
                ),
        ],
      ),
      onPressed: () => _onTabTapped(index),
    );
  }
}


class NoScreen extends StatelessWidget {
  const NoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('No Screen Found'),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:voyage_vue/models/navigate_model.dart';
import 'package:voyage_vue/views/home_view.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final List<NavigateModel> _screens = [
    const NavigateModel(
      text: 'Home',
      screen: HomeView(),
      icon: Icons.home_filled,
    ),
    NavigateModel(
      text: 'Favorite',
      screen: Container(color: Colors.blue),
      icon: Icons.favorite,
    ),
    NavigateModel(
      text: 'Search',
      screen: Container(color: Colors.red),
      icon: Icons.search,
    ),
    const NavigateModel(
      text: 'Profile',
      screen: Center(child: Text('Profile')),
      icon: Icons.person,
    ),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectedIndex].screen,
          Padding(
            padding: const EdgeInsets.all(25),
            child: Align(
              alignment: const Alignment(0, 1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectedIndex,
                  elevation: 0,
                  showSelectedLabels: false,
                  selectedItemColor: AppStyles.primaryColor,
                  unselectedItemColor: AppStyles.secColor,
                  showUnselectedLabels: false,
                  iconSize: 30,
                  onTap: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                  items: [
                    for (int i = 0; i < _screens.length; i++)
                      BottomNavigationBarItem(
                        icon: Icon(_screens[i].icon),
                        label: _screens[i].text,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

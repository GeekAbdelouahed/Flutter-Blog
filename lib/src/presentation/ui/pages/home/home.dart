import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../articles/articles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();
  int _selectedIndex = 0;

  List<Widget> _screens = [
    ArticlesPage(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  List<GButton> _tabs = [
    GButton(
      text: 'Article',
      icon: Icons.article_outlined,
      borderRadius: BorderRadius.circular(12.5),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    ),
    GButton(
      text: 'Search',
      icon: Icons.search,
      borderRadius: BorderRadius.circular(12.5),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    ),
    GButton(
      text: 'Favorite',
      icon: Icons.favorite_border,
      borderRadius: BorderRadius.circular(12.5),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    ),
    GButton(
      text: 'Profile',
      icon: Icons.account_circle_outlined,
      borderRadius: BorderRadius.circular(12.5),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                children: _screens,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Card(
                elevation: 10,
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GNav(
                  gap: 10,
                  iconSize: 20,
                  selectedIndex: _selectedIndex,
                  tabBackgroundColor: Colors.grey[200],
                  activeColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  onTabChange: (index) {
                    _selectedIndex = index;
                    _pageController.jumpToPage(_selectedIndex);
                  },
                  tabs: _tabs,
                ),
              ),
            ),
          ],
        ),
      );
}

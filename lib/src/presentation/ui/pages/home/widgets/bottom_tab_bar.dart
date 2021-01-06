import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationWidget extends StatelessWidget {
  final ValueNotifier<int> indexNotifier;

  BottomNavigationWidget({Key key, @required this.indexNotifier})
      : super(key: key);

  final List<GButton> _tabs = [
    _buildTab(title: 'Articles', icon: Icons.article_outlined),
    _buildTab(title: 'Search', icon: Icons.search),
    _buildTab(title: 'Favorite', icon: Icons.favorite_border),
    _buildTab(title: 'Profile', icon: Icons.account_circle_outlined),
  ];

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<int>(
        valueListenable: indexNotifier,
        builder: (_, index, __) => Card(
          elevation: 10,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: GNav(
            gap: 10,
            iconSize: 20,
            selectedIndex: index,
            tabBackgroundColor: Colors.grey[200],
            activeColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            onTabChange: (index) {
              indexNotifier.value = index;
            },
            tabs: _tabs,
          ),
        ),
      );

  static GButton _buildTab({String title, IconData icon}) => GButton(
        text: title,
        icon: icon,
        borderRadius: BorderRadius.circular(12.5),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      );
}

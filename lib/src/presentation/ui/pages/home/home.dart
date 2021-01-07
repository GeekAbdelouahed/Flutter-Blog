import 'package:flutter/material.dart';

import '../articles/articles.dart';
import '../search/search.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  final _indexNotifier = ValueNotifier<int>(0);

  List<Widget> _screens = [
    ArticlesPage(),
    SearchPage(),
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

  @override
  void initState() {
    super.initState();
    _indexNotifier.addListener(() {
      _controller.jumpToPage(_indexNotifier.value);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  _indexNotifier.value = index;
                },
                children: _screens,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavigationWidget(
                indexNotifier: _indexNotifier,
              ),
            ),
          ],
        ),
      );
}

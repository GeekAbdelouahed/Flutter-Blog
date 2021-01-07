import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/text_field/search_field.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  void _search(String query) {
    print(query);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 180,
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 40),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SearchFieldWidget(
                    onChanged: _search,
                    autoFocus: false,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.red,
                height: 500,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.green,
                height: 500,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.yellow,
                height: 500,
              ),
            ),
          ],
        ),
      );

  @override
  bool get wantKeepAlive => true;
}

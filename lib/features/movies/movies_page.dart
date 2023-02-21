import 'package:flutter/material.dart';

import './widgets/widgets.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage>
    with SingleTickerProviderStateMixin {
  // late final TabController _tabController;

  // @override
  // void initState() {
  //   _tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 250),
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            // controller: _tabController,
            isScrollable: true,
            indicator: DotIndicator(),
            tabs: [
              Tab(text: 'Movie'),
              Tab(text: 'Series'),
              Tab(text: 'TV Show'),
            ],
          ),
        ),
        body: const TabBarView(
          // controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            MoviesView(),
            SizedBox.expand(),
            SizedBox.expand(),
          ],
        ),
      ),
    );
  }
}

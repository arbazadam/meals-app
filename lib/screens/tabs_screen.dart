import 'package:flutter/material.dart';
import 'package:meals_app/screens/favourites_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';
import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.attach_money),
          onPressed: () {},
        ),
        drawer: MainDrawer(),
        appBar: AppBar(
            title: Text('Kitchen App'),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favourites',
              )
            ])),
        body: TabBarView(children: [CategoriesScreen(), FavouritesScreen()]),
      ),
    );
  }
}

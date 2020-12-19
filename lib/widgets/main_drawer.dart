import 'package:flutter/material.dart';
import 'package:meals_app/screens/deals_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String title, Function handleDraw) {
    return ListTile(
        leading: Icon(icon, size: 26),
        title: Text(title,
            style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.w700)),
        onTap: handleDraw);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
            height: 120,
            color: Colors.purple[200],
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text("Kitchen App !!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent[300]))),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.restaurant),
          title: Text('Meals',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          onTap: () {
            Navigator.of(context).pushNamed("/");
          },
        ),
        ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('Deals',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          onTap: () {
            Navigator.of(context).pushNamed(DealsScreen.routeName);
          },
        ),
        buildListTile(Icons.filter, 'Filters', () {
          Navigator.of(context).pushNamed(FiltersScreen.routeName);
        }),
      ],
    ));
  }
}

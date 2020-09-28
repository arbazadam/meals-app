import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String title) {
    return ListTile(
        leading: Icon(icon, size: 26),
        title: Text(title,
            style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.w700)),
        onTap: () {});
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
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('Deals',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          onTap: () {},
        ),
        buildListTile(Icons.filter, 'Filters'),
      ],
    ));
  }
}

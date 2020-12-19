import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static final String routeName = "/filters";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _isVegan = false;
  var _isVegetarian = false;
  var _isLactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Adjust your meal selection.',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
                child: ListView(children: [
              SwitchListTile(
                onChanged: (newVal) {
                  setState(() {
                    _glutenFree = newVal;
                  });
                },
                title: Text('Gluten free'),
                value: _glutenFree,
                subtitle: Text('Only include gluten free meals'),
              ),
              _buildSwitchListTile(
                  'Vegan', 'Only include vegan free meals', _isVegan, (newVal) {
                setState(() {
                  _isVegan = newVal;
                });
              }),
              _buildSwitchListTile('Lactose Free',
                  'Only include lactose free meals', _isLactoseFree, (newVal) {
                setState(() {
                  _isLactoseFree = newVal;
                });
              }),
              _buildSwitchListTile(
                  'Vegetarian', 'Only include vegetarian meals', _isVegetarian,
                  (newVal) {
                setState(() {
                  _isVegetarian = newVal;
                });
              })
            ]))
          ],
        ));
  }

  Widget _buildSwitchListTile(
      String title, String subtitle, bool val, Function onChanged) {
    return SwitchListTile(
      value: val,
      onChanged: onChanged,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

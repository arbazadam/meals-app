import 'package:flutter/material.dart';

class DealsScreen extends StatelessWidget {
  static final String routeName = "/deals";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Deals"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("These are your Deals",style: Theme.of(context).textTheme.title,),
        ));
  }
}

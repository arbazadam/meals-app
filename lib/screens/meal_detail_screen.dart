import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class MealDetails extends StatelessWidget {
  static String routeName = "/meal-details";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title), centerTitle: true),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("Ingredients",
                  style: Theme.of(context).textTheme.title)),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 300,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.amberAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(selectedMeal.ingredients[index],
                              style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .title
                                      .fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ));
                  },
                  itemCount: selectedMeal.ingredients.length))
        ],
      ),
    );
  }
}

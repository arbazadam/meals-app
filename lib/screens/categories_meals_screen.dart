import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../data/dummy_data.dart';
import '../models/Meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static String routeName="/category-meals";
 
  
  @override
  Widget build(BuildContext context) {
    final routeArgs=ModalRoute.of(context).settings.arguments as Map<String,String>;  //Extracting route arguments.
     final categoryId= routeArgs['id'];
     final categoryMeals= DUMMY_MEALS.where((meal)  {
       return meal.categories.contains(categoryId);
     }).toList();

    return Scaffold(
      appBar: AppBar(title:Text(routeArgs['title'])),
      body: ListView.builder(itemBuilder: (ctx,index)
      {return 
      MealItem(title: categoryMeals[index].title, imageUrl: categoryMeals[index].imageUrl, duration: categoryMeals[index].duration, complexity: categoryMeals[index].complexity, affordability: categoryMeals[index].affordability);
      },
      itemCount:categoryMeals.length
      )
    );
  }
}
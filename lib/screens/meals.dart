import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.title, required this.meals});
  final String title;
  List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title),),body:);
  }
}

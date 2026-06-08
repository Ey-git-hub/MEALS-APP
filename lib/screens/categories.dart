import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'some title', meals: []),
      ),
    ); //Navigator.push(context,route)
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('pick your category')),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          //using map()
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectcategory: () {
                _selectCategory(context);
              },
            ),
        ],
      ),
    );
  }
}

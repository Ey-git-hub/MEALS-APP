import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('pick your category')),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
        ],
      ),
    );
  }
}

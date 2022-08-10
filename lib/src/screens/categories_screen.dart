import 'package:flutter/material.dart';
import 'package:meal_app/src/widgets/category_item.dart';
import '../utils/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyData
            .map((catData) =>
                CategoryItem(title: catData.title, color: catData.color))
            .toList(),
      ),
    );
  }
}

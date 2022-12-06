// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:daily_meals/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('DailyMeal'),),
    body: GridView(
    padding:const EdgeInsets.all(25),
    children: DUMMY_CATEGORIES.
    map((catData) => CategoryItem(
    catData.title,catData.color, title: '',
    color: Colors.pink, id: '',)).
    toList(),
    gridDelegate:
    SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      ),
      
    )); 
  }
}
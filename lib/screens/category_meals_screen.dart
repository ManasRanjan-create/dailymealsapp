import 'package:daily_meals/models/meal.dart';
import 'package:daily_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:daily_meals/dummy_data.dart';


class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/ category-meals';

  const CategoryMealsScreen(String id, String title, { Key? key, 
   required this.categoryId, required this.categoryTitle }) : 
   super(key: key);
   final String categoryId;
   final String categoryTitle;

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  late String categoryTitle;
  late List<Meal> displayedMeals;


  @override
  void initState() {
    final routeArgs = ModalRoute.of(context)!.
    settings.arguments as Map<String, String>;
    categoryTitle = routeArg['title'];
    final cstegoryId = routeArgs['id'];
      displayedMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(widget.categoryId);
    }).toList();
    // TODO: implement initState
    super.initState();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  get title => null;

  get imageUrl => null;

  get duration => null;

  get complexity => null;

  get affordability => null;

  get CategoryMeals => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return MealItem(
        id: displayedMeals[index].id,
        title: displayedMeals[index].title, 
        imageUrl:displayedMeals[index].imageUrl, 
        duration: displayedMeals[index].duration,
        complexity: displayedMeals[index].complexity, 
        affordability: displayedMeals[index].affordability,
        removeItem: _removeMeal,
        );
        },
        itemCount: displayedMeals.length ,
      ),
    );
  }
}
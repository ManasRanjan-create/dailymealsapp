// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:daily_meals/screens/categories_screen.dart';
import 'package:daily_meals/screens/category_meals_screen.dart';
import 'package:daily_meals/screens/filters_screen.dart';
import 'package:daily_meals/screens/meal_detail_screen.dart';
import 'package:daily_meals/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
            ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
           ),
          subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
    home: CategoriesScreen(),
    routes: {
      '/': (ctx) =>TabsScreen(),
      CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(categoryId: '', categoryTitle: '',),
      MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if(settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        return MaterialPageRoute(builder: 
        (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      } ,
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('DailyMeals'),
      ),
      body: Center(
        
        child: Text('Navigation Time'),
      ),
    );
  }
}
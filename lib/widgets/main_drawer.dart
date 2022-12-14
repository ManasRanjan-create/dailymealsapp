// ignore_for_file: deprecated_member_use

import 'package:daily_meals/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(leading: 
          Icon(icon,size: 26,),
          title: Text('Meals',
          style:TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          onTap:tapHandler(),

       );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text('Cooking Up!',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color:Theme.of(context).primaryColor
          ),),
          ),
          SizedBox(height: 20,
          ),
          buildListTile('Meals', Icons.restaurant,
           () {
             Navigator.of(context).pushReplacementNamed('/');
           }
          ),
          buildListTile('Filters', Icons.settings,
          () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }
          ),],
      ),
      
    );
  }
}
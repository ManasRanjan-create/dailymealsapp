import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(String title, color, {Key? key, 
  required this.title,
  required this.color, 
  required this.id}) : 
  super(key: key);
 void selectCatagory(BuildContext ctx) {
   Navigator.of(ctx).pushNamed(
     '/category-meals',arguments: 
     {'id': id,
     'title': title,
     });
  //    MaterialPageRoute(builder: (_) {
  //    return CategoryMealsScreen(
  //     id,title, categoryId: '',
  //     categoryTitle: '',);
  //  },),);

 }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCatagory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(padding:  
      const EdgeInsets.all(15),
      child: Text(title, style: 
      Theme.of(context).textTheme.subtitle1,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7),
          color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(15),
      ),
      ),
    );
  }
}

enum Complexity {
  Simple,
  Challenging,
  Hard
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List <String> steps;
  final int duration;
  final Complexity complexity ;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactosFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
  required this.id, 
  required this.categories,
  required this.title, 
  required this.imageUrl, 
  required this.steps, 
  required this.duration, 
  required this.complexity, 
  required this.affordability, 
  required this.isGlutenFree, 
  required this.isLactosFree, 
  required this.isVegan,
  required this.isVegetarian, 
  required List<String> ingredients, 
  required bool isLactoseFree, 
  });

  get ingredients => null;

  @override
  String toString() {
    return 'Meal(id: $id, categories: $categories, title: $title, imageUrl: $imageUrl, steps: $steps, duration: $duration, affordability: $affordability, isGlutenFree: $isGlutenFree, isLactosFree: $isLactosFree, isVegan: $isVegan, isVegetarian: $isVegetarian)';
  }
}

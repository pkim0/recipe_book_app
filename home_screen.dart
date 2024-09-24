import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Spaghetti Bolognese',
      'ingredients': [
        '200g Spaghetti',
        '100g Ground Beef',
        'Tomato Sauce',
        'Garlic',
        'Onions'
      ],
      'instructions': [
        'Boil the spaghetti.',
        'Cook the ground beef with garlic and onions.',
        'Add tomato sauce and let it simmer.',
        'Mix spaghetti with the sauce.'
      ]
    },
    {
      'name': 'Chicken Curry',
      'ingredients': [
        '200g Chicken Breast',
        'Coconut Milk',
        'Curry Powder',
        'Garlic',
        'Onions'
      ],
      'instructions': [
        'Cook chicken breast until brown.',
        'Add garlic, onions, and curry powder.',
        'Pour coconut milk and let it simmer.',
        'Serve with rice.'
      ]
    },
    {
      'name': 'Greek Salad',
      'ingredients': [
        'Tomatoes',
        'Cucumbers',
        'Olives',
        'Feta Cheese',
        'Olive Oil'
      ],
      'instructions': [
        'Chop tomatoes and cucumbers.',
        'Mix with olives and feta cheese.',
        'Drizzle with olive oil and serve.'
      ]
    },
    {
      'name': 'Pancakes',
      'ingredients': [
        '2 cups Flour',
        '1 cup Milk',
        '2 Eggs',
        '1 tbsp Sugar',
        '1 tsp Baking Powder'
      ],
      'instructions': [
        'Mix all ingredients in a bowl.',
        'Pour batter onto a heated pan.',
        'Cook until bubbles form, then flip.',
        'Serve with syrup or toppings of choice.'
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']),
            onTap: () {
              // Navigate to DetailsScreen and pass recipe details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
            for (var ingredient in recipe['ingredients'])
              Text('• $ingredient'),
            SizedBox(height: 10),
            Text('Instructions:', style: TextStyle(fontWeight: FontWeight.bold)),
            for (var step in recipe['instructions']) Text('• $step'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'models/recipe.dart';
import 'recipe_detail.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe List")),
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.asset(
                recipe.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(recipe.title),
              subtitle: Text(recipe.description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetail(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

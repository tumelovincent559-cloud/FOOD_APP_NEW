import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final List<String> ingredients;
  final List<String> steps;

  const RecipeDetail({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
    required this.ingredients,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(description,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            const SizedBox(height: 24),
            const Text("Ingredients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...ingredients.map((item) => ListTile(
                  leading: const Icon(Icons.check),
                  title: Text(item),
                )),
            const SizedBox(height: 24),
            const Text("Steps",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...steps.asMap().entries.map((entry) => ListTile(
                  leading: CircleAvatar(
                    child: Text("${entry.key + 1}"),
                  ),
                  title: Text(entry.value),
                )),
          ],
        ),
      ),
    );
  }
}

class Recipe {
  final String title;
  final String imagePath;
  final String description;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.ingredients,
    required this.steps,
  });
}

// Example sample recipes
final List<Recipe> sampleRecipes = [
  Recipe(
    title: "Spaghetti Bolognese",
    imagePath: "assets/images/spaghetti.jpg",
    description: "A classic Italian pasta dish with rich meat sauce.",
    ingredients: [
      "200g spaghetti",
      "100g minced beef",
      "1 onion",
      "2 garlic cloves",
      "400g canned tomatoes",
      "Olive oil",
      "Salt & pepper",
    ],
    steps: [
      "Boil spaghetti until al dente.",
      "Sauté onion and garlic in olive oil.",
      "Add minced beef and cook until browned.",
      "Pour in canned tomatoes and simmer.",
      "Season with salt and pepper.",
      "Serve sauce over spaghetti.",
    ],
  ),
  Recipe(
    title: "Chicken Curry",
    imagePath: "assets/images/chicken_curry.jpg",
    description: "A flavorful curry with tender chicken pieces.",
    ingredients: [
      "500g chicken breast",
      "2 onions",
      "3 garlic cloves",
      "1 tbsp curry powder",
      "400ml coconut milk",
      "Salt & pepper",
    ],
    steps: [
      "Cut chicken into cubes.",
      "Sauté onion and garlic until golden.",
      "Add chicken and cook until sealed.",
      "Stir in curry powder.",
      "Pour in coconut milk and simmer.",
      "Season and serve with rice.",
    ],
  ),
];
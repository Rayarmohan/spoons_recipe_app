class RecipeModel {
  String? title;
  String? description;
  String? imageUrl;
  bool? isFavorite;
  String? ingredients;
  List<String>? instructions;
  String? time; // You can use a more appropriate type for time, e.g., Duration.
  String? category;

  RecipeModel({
    required this.title,
    required this.ingredients,
    required this.description,
    required this.imageUrl,
    required this.isFavorite,
    required this.instructions,
    required this.time,
    required this.category,
  });

  static List<RecipeModel> recipes = [
    RecipeModel(
      title: "Spaghetti Bolognese",
      description: "Classic Italian pasta dish",
      ingredients: "Pasta, Ground beef, Onion, Garlic, Tomato sauce",
      imageUrl: "https://imgs.search.brave.com/WXahkJWMbMxHONkINo5zO5yMH5OIqUWmXF3Oo-90koU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMwMS5ueXQuY29t/L2ltYWdlcy8yMDIw/LzA0LzE1L2Rpbmlu/Zy8xNVBhc3RhLU1l/YWwtU2F1Y2UtYS8x/NVBhc3RhLU1lYWwt/U2F1Y2UtYS1hcnRp/Y2xlTGFyZ2UtdjIu/anBnP3c9MTI4MCZx/PTc1",
      isFavorite: false,
      instructions: [
        "Boil water and cook spaghetti according to package instructions.",
        "In a separate pan, brown ground beef until fully cooked.",
        "Add diced onions, garlic, and tomato sauce to the beef.",
        "Simmer the sauce until it thickens.",
        "Serve the sauce over the cooked spaghetti.",
      ],
      time: "30m",
      category: "Food",
    ),
    RecipeModel(
      title: "Classic Margherita Pizza",
      description: "Authentic Italian pizza with fresh ingredients",
      ingredients:
          "Pizza dough, Mozzarella cheese, Tomato sauce, Fresh basil, Olive oil",
      imageUrl: "https://imgs.search.brave.com/bQJ-k_PXi-NCg3H8QNbtQAkzLb6e0f1vPASoPYhAX_I/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/YWxscmVjaXBlcy5j/b20vdGhtYi8yclFB/X09sbkxiaGlkZWk3/MGdsejZIQ0NZQXM9/LzE1MDB4MC9maWx0/ZXJzOm5vX3Vwc2Nh/bGUoKTptYXhfYnl0/ZXMoMTUwMDAwKTpz/dHJpcF9pY2MoKS8x/NDUzODE1LWF1dGhl/bnRpYy1waXp6YS1t/YXJnaGVyaXRhLUN5/bnRoaWEtUm9zcy00/eDMtMS03NDEwYzY5/NTUyMjc0MTYzYTkw/NDkzNDJiNjBjMjJm/Zi5qcGc",
      isFavorite: false,
      instructions: [
        "Preheat the oven to 475°F (245°C).",
        "Roll out the pizza dough on a floured surface.",
        "Spread a thin layer of tomato sauce over the dough.",
        "Place slices of fresh mozzarella evenly on the sauce.",
        "Bake in the oven until the crust is golden and the cheese is melted.",
        "Remove from the oven, sprinkle with fresh basil, and drizzle with olive oil.",
        "Slice and serve hot.",
      ],
      time: "25m",
      category: "Food",
    ),
    RecipeModel(
      title: "Refreshing Mint Lemonade",
      description: "Cool and zesty homemade lemonade with a hint of mint",
      ingredients: "Lemons, Sugar, Water, Fresh mint leaves, Ice cubes",
      imageUrl: "https://imgs.search.brave.com/GV-GETJfDnXrGc7_D6MwxMeyG6G3KvXv7sbqZWfViC0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dGhld2hvbGVzb21l/ZGlzaC5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTcvMDMv/Q3VjdW1iZXItTWlu/dC1MZW1vbmFkZS0z/LmpwZw",
      isFavorite: false,
      instructions: [
        "Juice the lemons to extract fresh lemon juice.",
        "In a pitcher, mix lemon juice with sugar and water until sugar dissolves.",
        "Add fresh mint leaves and let it steep for about 15 minutes.",
        "Strain the mixture to remove mint leaves.",
        "Refrigerate the lemonade until chilled.",
        "Serve over ice and garnish with additional mint leaves.",
      ],
      time: "15m",
      category: "Drinks",
    ),
     RecipeModel(
    title: "Chicken Biryani",
    description: "A flavorful and aromatic Indian rice dish with chicken",
    ingredients: "Basmati rice, Chicken, Onions, Tomatoes, Yogurt, Ginger, Garlic, Biryani masala, Ghee, Mint leaves, Cilantro, Cashews",
    imageUrl: "https://imgs.search.brave.com/Wk2ATCxgIz4vI_zshMtmMjnmjtbG48vmFV_5RRcsXDQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzU4LzczLzQz/LzM2MF9GXzM1ODcz/NDM2N19PUVlSejJW/QzZ4ZTFEcEVIUWtu/dlRtc1M3RXc0WlNt/by5qcGc",
    isFavorite: false,
    instructions: [
      "Wash and soak basmati rice in water for 30 minutes. Drain.",
      "In a large pot, heat ghee and sauté sliced onions until golden brown.",
      "Add ginger-garlic paste and chopped tomatoes, cook until tomatoes are soft.",
      "Add chicken pieces, yogurt, and biryani masala. Cook until chicken is partially cooked.",
      "Layer half-cooked rice over the chicken mixture. Sprinkle mint leaves, cilantro, and fried cashews.",
      "Cover and cook on low heat until the rice is fully cooked and aromatic.",
      "Gently fluff the biryani with a fork and serve hot.",
    ],
    time: "1h",
    category: "Food",
  ),
   RecipeModel(
    title: "Fresh Orange Juice",
    description: "Homemade citrus goodness in a glass",
    ingredients: "Oranges, Sugar (optional), Ice cubes",
    imageUrl: "https://imgs.search.brave.com/tYvmtzFG_HT4R-y5Sg9hBKfZAtj4F1UZzVRNPHlVU_4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzg3LzIxLzMx/LzM2MF9GXzE4NzIx/MzExMF9wMDd1ZlVD/NDJ6VmxjYWlqWFJ1/RkZZQjRNS3NXTGdx/MS5qcGc",
    isFavorite: false,
    instructions: [
      "Wash and cut oranges in half. Squeeze the juice into a bowl.",
      "Strain the juice to remove pulp and seeds.",
      "Taste the juice and add sugar if desired, stirring until dissolved.",
      "Pour the fresh orange juice into a glass over ice cubes.",
      "Garnish with a slice of orange on the rim of the glass (optional).",
      "Serve chilled and enjoy the refreshing goodness!",
    ],
    time: "10m",
    category: "Drinks",
  ),
  RecipeModel(
    title: "Classic Mojito",
    description: "A refreshing and minty Cuban cocktail",
    ingredients: "White rum, Fresh mint leaves, Lime, Simple syrup, Soda water, Ice cubes",
    imageUrl: "https://imgs.search.brave.com/vlF2s0gMD1HrPjrt0Bsx7BqvOhHhhNGdtY3hFs2ZDQU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE0LzU3Lzkz/LzM2MF9GXzMxNDU3/OTMwN19kWWU1UXBO/STBXSFVNREpISmpU/N1AwY3R0NDZVZGJB/Ny5qcGc",
    isFavorite: false,
    instructions: [
      "In a glass, muddle fresh mint leaves with lime wedges and simple syrup.",
      "Add white rum to the glass and fill it with ice cubes.",
      "Top off with soda water and gently stir the mixture.",
      "Garnish with a mint sprig and a lime wedge on the rim of the glass.",
      "Serve chilled and enjoy the classic Mojito!",
    ],
    time: "10m",
    category: "Drinks",
  ),
  RecipeModel(
    title: "Strawberry Mojito",
    description: "A fruity twist on the classic Mojito with fresh strawberries",
    ingredients: "White rum, Fresh strawberries, Fresh mint leaves, Lime, Simple syrup, Soda water, Ice cubes",
    imageUrl: "https://imgs.search.brave.com/HtrUTEEfEoHbKlqbLYo5wEEir9-XFpDRFoD7MkjliCs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9n/bGFzcy1mcmVzaC1z/dHJhd2JlcnJ5LW1p/bGtzaGFrZS1zbW9v/dGhpZS1mcmVzaC1z/dHJhd2JlcnJpZXMt/aGVhbHRoeS1mb29k/LWRyaW5rLWNvbmNl/cHRfMTE0NTc5LTEw/MTQ1LmpwZz9zaXpl/PTYyNiZleHQ9anBn",
    isFavorite: false,
    instructions: [
      "In a glass, muddle fresh mint leaves, sliced strawberries, and lime wedges with simple syrup.",
      "Add white rum to the glass and fill it with ice cubes.",
      "Top off with soda water and gently stir the fruity mixture.",
      "Garnish with a strawberry and mint sprig on the rim of the glass.",
      "Serve chilled and enjoy the delightful Strawberry Mojito!",
    ],
    time: "12m",
    category: "Drinks",
  ),
  RecipeModel(
    title: "Mixed Noodles Stir-Fry",
    description: "A flavorful combination of noodles, vegetables, and protein",
    ingredients: "Egg noodles, Mixed vegetables (bell peppers, broccoli, carrots), Chicken or tofu, Soy sauce, Sesame oil, Garlic, Ginger, Green onions, Sesame seeds",
    imageUrl: "https://imgs.search.brave.com/cG29hGkubzy--t3-81QWXLBaZ4rf0-Ial3KjQ9h7ReA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bG92ZWFuZG9saXZl/b2lsLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAxOS8wNC9z/ZXNhbWUtc3Rpci1m/cnktbm9vZGxlcy1G/RUFULmpwZw",
    isFavorite: false,
    instructions: [
      "Cook egg noodles according to package instructions, then drain and set aside.",
      "In a wok or large pan, heat sesame oil and sauté garlic and ginger until fragrant.",
      "Add chicken or tofu and cook until browned and cooked through.",
      "Add mixed vegetables and stir-fry until they are tender-crisp.",
      "Toss in the cooked noodles and soy sauce, stirring to combine.",
      "Garnish with chopped green onions and sesame seeds before serving.",
      "Enjoy the delicious mixed noodles stir-fry!",
    ],
    time: "20m",
    category: "Food",
  ),
  RecipeModel(
    title: "Chicken Shawarma",
    description: "Middle Eastern spiced grilled chicken wrapped in pita bread",
    ingredients: "Chicken thighs, Greek yogurt, Lemon juice, Garlic, Cumin, Paprika, Cayenne pepper, Pita bread, Tzatziki sauce, Tomatoes, Cucumbers, Red onions",
    imageUrl: "https://imgs.search.brave.com/Qvl9ZmIhsFtnQHybMHff0NF0Ybu2z8I38aHhRiXy6Oo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA1Lzc5LzA4Lzc0/LzM2MF9GXzU3OTA4/NzQ3M180aTNtSlJj/VHFWN0lVMnIwQ3d5/ejl3TTRMaUx4YlRp/YS5qcGc",
    isFavorite: false,
    instructions: [
      "Marinate chicken thighs in Greek yogurt, lemon juice, minced garlic, and spices for at least 1 hour.",
      "Grill or bake the marinated chicken until fully cooked and slightly charred.",
      "Slice the grilled chicken into thin strips.",
      "Warm pita bread and assemble shawarma wraps with sliced chicken, tzatziki sauce, tomatoes, cucumbers, and red onions.",
      "Serve immediately and savor the delicious Chicken Shawarma!",
    ],
    time: "1h",
    category: "Food",
  ),
  
  ];
}

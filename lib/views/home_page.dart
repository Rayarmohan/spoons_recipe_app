import 'package:flutter/material.dart';
import 'package:spoons/constants/text_styles.dart';
import 'package:spoons/models/recipe_model.dart';
import 'package:spoons/views/details_page.dart';
import 'package:spoons/widgets/category_list_item.dart';
import 'package:spoons/widgets/list_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List category = ['All', 'Food', 'Drinks'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<RecipeModel> recipe = RecipeModel.recipes;
    List<RecipeModel> drinkRecipes = RecipeModel.recipes.where((recipe) => recipe.category == "Drinks").toList();
    List<RecipeModel> foodRecipes = RecipeModel.recipes.where((recipe) => recipe.category == "Food").toList();

    List<RecipeModel> selectedList;
    if (selectedIndex == 0) {
      selectedList = recipe;
    } else if (selectedIndex == 1) {
      selectedList = foodRecipes;
    } else {
      selectedList = drinkRecipes;
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Category",
              style: AppTextStyles.categoryTextStyle,
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CategoryItemContainer(
                  itemname: category[index],
                  currentindex: index,
                  selectedIndex: selectedIndex,
                ),
              ),
              itemCount: category.length,
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    mainAxisExtent: 300
                    // Adjust the spacing between items
                    ),
                itemBuilder: (context, index) {
                  
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) =>
                                  DetailsPage(recipe: selectedList[index])));
                    },
                    child: ListContainer(
                      itemname: selectedList[index].title ?? "",
                      itemtime: selectedList[index].time ?? "",
                      imageUrl: selectedList[index].imageUrl ?? "",
                    ),
                  );
                },
                itemCount: selectedList.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}

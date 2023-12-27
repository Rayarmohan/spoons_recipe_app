import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spoons/constants/colors.dart';
import 'package:spoons/models/recipe_model.dart';

class DetailsPage extends StatelessWidget {
  final RecipeModel recipe;
  const DetailsPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                image: DecorationImage(
                    image: NetworkImage(recipe.imageUrl ?? ""),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
                top: 50,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colours
                        .primaryColour, // Set the background color to green
                    shape:
                        BoxShape.circle, // You can adjust the shape as needed
                  ),
                  child: const BackButton(
                    color: Colors.white, // Set the color of the back arrow
                  ),
                ))
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.title ?? "",
                      style: GoogleFonts.prompt(
                        color: Colours.primaryColour,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      recipe.description ?? "",
                      style: GoogleFonts.domine(fontSize: 20),
                    ),
                    Text(
                      "Time : ${recipe.time}",
                      style: GoogleFonts.domine(
                          fontSize: 18, color: Colours.primaryColour),
                    ),
                    Text(
                      "Ingredients : ${recipe.ingredients}",
                      style: GoogleFonts.domine(
                          fontSize: 18, color: Colours.textColor),
                    ),
                    Text(
                      "Instructions :",
                      style: GoogleFonts.domine(
                        fontSize: 18,
                        color: Colours.primaryColour,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...(recipe.instructions ?? <String>[])
                        .asMap()
                        .entries
                        .map((entry) => Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                              ),
                              child: Text(
                                "${entry.key + 1}. ${entry.value}",
                                style: GoogleFonts.domine(
                                  fontSize: 18,
                                  color: Colours.textColor,
                                ),
                              ),
                            ))
                        .toList(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

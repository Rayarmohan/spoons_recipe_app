import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spoons/constants/colors.dart';
import 'package:spoons/views/bottom_nav_page.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'lib/assets/startscreen.jpg',
            fit: BoxFit.cover,
          ),
          // Centered Text Aligned to the Left
          Column(children: [
            const SizedBox(
              height: 280,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Cook something new Every day',
                  style: GoogleFonts.prompt(
                      color: Colours.primaryColour,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (ctx) => const BottomNavPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colours.primaryColour,
                  minimumSize: const Size(double.infinity,
                      50.0), // Set the width to screensize and height to 50.0
                ),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spoons/constants/colors.dart';
import 'package:spoons/views/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colours.primaryColour

        ),
        primaryColor: Colours.primaryColour,

        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}


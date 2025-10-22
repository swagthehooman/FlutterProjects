import 'package:coffee_app/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'utils/appThemeData.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BrewBuddy',
      debugShowCheckedModeBanner: false,
      theme: CoffeeTheme.lightTheme,   // ☀️ Light mode
      darkTheme: CoffeeTheme.darkTheme, // 🌙 Dark mode
      themeMode: ThemeMode.system,  
      home: const WelcomePage(),
    );
  }
}
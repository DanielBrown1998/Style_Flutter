import 'package:flutter/material.dart';
import 'package:app/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor primaryColor = Colors.purple;
    MaterialColor spent = Colors.amber;
    MaterialAccentColor income = Colors.pinkAccent;

    return MaterialApp(
      title: 'AluraBank',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: primaryColor,
        primaryColor: primaryColor,
        canvasColor: spent,
        hintColor: income,
        dividerColor: const Color.fromARGB(220, 140, 139, 139),
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: "Roboto",
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(fontFamily: "Roboto"),
          headlineMedium: TextStyle(
            fontFamily: "Roboto",
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const Home(title: 'AluraBank'),
    );
  }
}

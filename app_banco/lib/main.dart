import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(BankingApp());
}

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.teal.shade900),
          bodyMedium: TextStyle(color: Colors.teal.shade700),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:giganima/src/screens/home_screen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[200]
      ),
      home: HomeScreen(),
    );
  }

}


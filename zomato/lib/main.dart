import 'package:flutter/material.dart';

import 'Views/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zomato',
      theme: ThemeData(
          primarySwatch: Colors.red,
        // primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
    foregroundColor: Colors.black, //<-- SEE HERE
    ),),
      home:  HomeScreen(),
    );
  }
}


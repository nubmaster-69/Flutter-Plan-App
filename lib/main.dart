import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';
import 'package:plan_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plan App",
      theme: ThemeData(
          primaryColor: primaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      routes: {},
      home: const HomeScreen(),
    );
  }
}

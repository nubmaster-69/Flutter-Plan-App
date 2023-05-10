import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';

import 'widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: primaryColor,
      ),
      body: const Body(),
    );
  }
}

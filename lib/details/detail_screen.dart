import 'package:flutter/material.dart';
import 'package:plan_app/details/components/body.dart';

import '../model/plan_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(plan: plan),
    );
  }
}

import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static String routeName = '/meal-detail';

  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Detail'),
      ),
      body: Center(
        child: Text('Detail Meal $id'),
      ),
    );
  }
}

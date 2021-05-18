import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  const CategoryMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('The recipes $id'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static String routeName = '/filters';

  const FiltersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Filters'),
      ),
    );
  }
}

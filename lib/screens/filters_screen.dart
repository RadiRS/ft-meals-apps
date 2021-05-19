import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static String routeName = '/filters';

  const FiltersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your FIlters'),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Text('Filters'),
      ),
    );
  }
}

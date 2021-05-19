import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static String routeName = '/filters';

  const FiltersScreen({Key key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your FIlters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust you meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  _glutenFree,
                  (value) => setState(() => _glutenFree = value),
                ),
                buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals.',
                  _lactoseFree,
                  (value) => setState(() => _lactoseFree = value),
                ),
                buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals.',
                  _vegetarian,
                  (value) => setState(() => _vegetarian = value),
                ),
                buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals.',
                  _vegan,
                  (value) => setState(() => _vegan = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SwitchListTile buildSwitchListTile(
    String title,
    String desc,
    bool value,
    Function onChange,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(desc),
      value: value,
      onChanged: (value) => onChange(value),
    );
  }
}

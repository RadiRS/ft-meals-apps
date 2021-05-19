import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purpleAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (_) => TabsScreen(),
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (_) => MealDetailScreen(),
        FiltersScreen.routeName: (_) => FiltersScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        print(settings.name);

        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}

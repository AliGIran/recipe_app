import 'package:flutter/material.dart';
import 'package:recipe_app/second%20clean/domain/controller/meal_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Text("Food name: $singleMealDomainRepository")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            updateMealData();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

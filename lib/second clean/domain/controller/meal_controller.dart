import 'dart:developer';

import 'package:recipe_app/second%20clean/data/model/meal_API_data_mdoel.dart';

import '../../data/repository/meal_data_repository.dart';

class MealDomainController {
  final String idMeal;
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strTags;
  final String strYoutube;

  MealDomainController(
      this.idMeal,
      this.strMeal,
      this.strCategory,
      this.strArea,
      this.strInstructions,
      this.strMealThumb,
      this.strTags,
      this.strYoutube);
}

Future<void> updateMealData() async {
  MealDataRepository mealDataRepository = MealDataRepository();
  SingleMeal singleMeal = mealDataRepository.singleMeal;

  MealDomainController(
    singleMeal.idMeal,
    singleMeal.strMeal,
    singleMeal.strCategory,
    singleMeal.strArea,
    singleMeal.strInstructions,
    singleMeal.strMealThumb,
    singleMeal.strTags,
    singleMeal.strYoutube,

    // log(randomMealRequestBodyDecode['meals'][0]['idMeal'],
  );
}

 void main() {
  updateMealData();
}

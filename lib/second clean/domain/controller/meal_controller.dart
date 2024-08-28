import 'dart:developer';

import '../../data/repository/meal_repository.dart';

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

updateMealData() {
  MealDomainController(
      randomMealRequestBodyDecode['meals'][0]['idMeal'],
      randomMealRequestBodyDecode['meal'][0]['strMeal'],
      randomMealRequestBodyDecode['meal'][0]['strCategory'],
      randomMealRequestBodyDecode['meal'][0]['strArea'],
      randomMealRequestBodyDecode['meal'][0]['strInstructions'],
      randomMealRequestBodyDecode['meal'][0]['strMealThumb'],
      randomMealRequestBodyDecode['meal'][0]['strTags'],
      randomMealRequestBodyDecode['meal'][0]['strYoutube']);

  log(randomMealRequestBodyDecode['meals'][0]['idMeal'],);
}

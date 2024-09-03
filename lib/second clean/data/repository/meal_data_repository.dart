import 'dart:convert';

import 'package:recipe_app/second%20clean/data/model/meal_API_data_mdoel.dart';

import '../request/get_meals_data_requests.dart';

class MealDataRepository {
  late SingleMeal _singleMeal;
  var _response, _responseBody;

//Method to fetch and decode meal data
  fetchAndDecodeMealDataJson() async {
    //Get the response
    _response = await getRandomMealRequest();

    //Decode the response body
    _responseBody = await jsonDecode(_response);

    //Check the structure and create SingleMeal instance
    if (_responseBody is Map && _responseBody['meals'] is List) {
      var mealData = _responseBody['meals'][0];
      _singleMeal = SingleMeal.fromJson(mealData);
    } else {
      throw Exception('Unhandled  getRandomMealRequest() response structure');
    }
  }

  //Getter for SingleMeal
  SingleMeal get singleMeal => _singleMeal;
  //Getter for response
  get response => _response;
  //Getter for responseBody
  get responseBody => _responseBody;
}





















// // var randomMealRequestBodyDecode = jsonDecode(getRandomMealRequest());
// var responseBody;
//
// Future<void> fetchAndDecodeRandomMeal() async {
//   // Await the response from getRandomMealRequest()
//   // var responseBody = await getRandomMealRequest();
//
//   var _responseBody;
//
//   // try {
//   //   _responseBody = await getRandomMealRequest();
//   //   responseBody = _responseBody;
//   // } catch (e) {
//   //   responseBody = "jhl";
//   // }
//
//   // Decode the JSON response
//   var randomMealRequestBodyDecode = jsonDecode(responseBody);
//
//   // Now you can use randomMealRequestBodyDecode
//   print(randomMealRequestBodyDecode);
//
//   // If you want to know the number of categories
//   if (randomMealRequestBodyDecode is Map &&
//       randomMealRequestBodyDecode['categories'] is List) {
//     int numberOfCategories = randomMealRequestBodyDecode['categories'].length;
//     print('Number of categories: $numberOfCategories');
//   }
// }

// void main() {
//   // Call your asynchronous function in an async-aware context
//   fetchAndDecodeRandomMeal();
// }

// final SingleMeal _singlMeal = SingleMeal(
//     "idMeal",
//     "strMeal",
//     "strDrinkAlternate",
//     "strCategory",
//     "strArea",
//     "strInstructions",
//     "strMealThumb",
//     "strTags",
//     "strYoutube",
//     'strIngredient1',
//     'strIngredient2',
//     'strIngredient3',
//     "strIngredient4",
//     'strIngredient5',
//     'strIngredient6',
//     'strIngredient7',
//     'strIngredient8',
//     'strIngredient9',
//     'strIngredient10',
//     'strIngredient11',
//     'strIngredient12',
//     'strIngredient13',
//     'strIngredient14',
//     'strIngredient15',
//     'strIngredient16',
//     'strIngredient17',
//     'strIngredient18',
//     'strIngredient19',
//     'strIngredient20',
//     'strMeasure1',
//     'strMeasure2',
//     'strMeasure3',
//     'strMeasure4',
//     'strMeasure5',
//     'strMeasure6',
//     'strMeasure7',
//     'strMeasure8',
//     'strMeasure9',
//     'strMeasure10',
//     'strMeasure11',
//     'strMeasure12',
//     'strMeasure13',
//     'strMeasure14',
//     'strMeasure15',
//     'strMeasure16',
//     'strMeasure17',
//     'strMeasure18',
//     'strMeasure19',
//     'strMeasure20',
//     'strSource',
//     'strImageSource',
//     'strCreativeCommonsConfirmed',
//     'dateModified');

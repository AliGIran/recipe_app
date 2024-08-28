import 'dart:developer';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_app/second%20clean/data/endpoint/meal_API-endpoints.dart';
import 'package:recipe_app/second%20clean/data/model/meal_API_mdoel.dart';

getRandomMealRequest()  async {
  var url = Uri.https(mainMealEndpoint, randomMealEndpoint);

  var request = await http.get(url);

  if (request.statusCode == 200) {
    return request.body;
  } else {
    log(request.statusCode.toString());
  }
}



// class FoodDataSource {
//   Future<SingleMeal> getRandomFood() async {
//     final response = await http.get(Uri.parse(mainMealEndpoint,randomMealEndpoint));
//
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       return SingleMeal.fromJson(data['meals'][0]);
//     } else {
//       throw Exception('Failed to load food data');
//     }
//   }
// }
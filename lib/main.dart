import 'package:flutter/material.dart';
import 'package:recipe_app/second%20clean/presentation/pages/mian_page.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     home: Scaffold(
//     body: ListView.builder(
//     itemCount: 5,
//       itemBuilder: (context, index) => Card(),
//     ),
//       floatingActionButton: FloatingActionButton(
//       onPressed: () {
//         // Ap;
//       },
//         child: const Icon(Icons.add),
//       ),
//     ),
//     );
//   }
// }
//
//
// class ApiClass {
//   final endpoint = "www.themealdb.com/api/json/v1/1/categories.php";
//   late List<dynamic> aPIcategories = callApi.cateogries;
//
//   Future<List> callApi() async {
//     // var url = Uri.http("www.themealdb.com", "api/json/v1/1/categories.php");
//     var url = Uri.http(endpoint);
//     var response = await http.get(url);
//
//     final jsonResponse = json.decode(response.body);
//     final List<dynamic> categories = jsonResponse['categories'];
//
//     log(categories.length.toString());
//     return categories;
//   }
// }

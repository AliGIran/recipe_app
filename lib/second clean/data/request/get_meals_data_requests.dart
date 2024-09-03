import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:recipe_app/second%20clean/data/endpoint/meal_API_data_endpoints.dart';

Future<http.Response> getRandomMealRequest() async {
  var url = Uri.https(mainMealEndpoint, randomMealEndpoint);

  var request = await http.get(url);

  if (request.statusCode == 200) {
    return request;
  } else {
    throw ("getRandomMealRequest status code is ${request.statusCode}");
  }
}

// Future<String> getRandomMealRequest() async {
//   var url = Uri.https(
//     mainMealEndpoint,
//     randomMealEndpoint,
//   );
//
//   var request = await http.get(url);
//
// try {
//
//   if (request.statusCode == 200) {
//     return request.body;
//   } else {
//     // log(request.statusCode.toString());
//     return "no answer yet";
//   }
// }catch(e){
//   // SingleMeal("","","","","","","","","");
//   print(100);
//   throw(e);
// }
//
//
//
// }

// void main()async{
//   var test = await getRandomMealRequest();
//
//
// }

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

// void main(){runApp(ReactiveStreamBuilderWidget());}
//
//
// class ReactiveStreamBuilderWidget extends StatelessWidget {
//   final Stream<int> counterStream =
//   Stream.periodic(const Duration(seconds: 1), (count) => count);
//
//   ReactiveStreamBuilderWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Reactive StreamBuilder')),
//         body: Center(
//           child: StreamBuilder<int>(
//             stream: counterStream,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return CircularProgressIndicator();
//               } else if (snapshot.hasError) {
//                 return Text('Error: ${snapshot.error}');
//               } else if (!snapshot.hasData) {
//                 return const Text('No data');
//               } else {
//                 return Text('Counter: ${snapshot.data}');
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

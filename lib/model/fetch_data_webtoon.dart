import 'dart:convert';
import 'package:project_uas/model/webtoon.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


// }

class Repository {
  final String apiUrl =
      "https://webtoon-55848-default-rtdb.firebaseio.com/webtoon.json";

  Future<List<Webtoon>> fetchDataPlaces() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<Webtoon> dataPlaces;
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      dataPlaces = jsonData.values.map((value) {
        return Webtoon.fromJson(value);
      }).toList();

      return dataPlaces;
    } else {
      throw Exception('Failed to load data places');
    }
  }

  Future<Webtoon> fetchDataByName(String name) async {
    String specificUrl = "$apiUrl?orderBy=\"Nama\"&equalTo=\"$name\"";
    Response response = await http.get(Uri.parse(specificUrl));
    Webtoon dataPlace;

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      // Check if any data is found
      if (jsonData.isNotEmpty) {
        // Assuming the data is stored as a map, get the first item
        MapEntry<String, dynamic> entry = jsonData.entries.first;

        dataPlace = Webtoon.fromJson(entry.value);
        return dataPlace;
      } else {
        throw Exception('Data with name $name not found');
      }
    } else {
      throw Exception('Failed to load data places');
    }
  }
}
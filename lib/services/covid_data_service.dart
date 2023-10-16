import 'dart:convert';
import 'package:http/http.dart' as http;

class CovidDataService {
  final String apiUrl = 'https://api.covidtracking.com/v2/states.json';

  Future<List<CovidData>> fetchCovidData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) => CovidData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load COVID data');
    }
  }
}

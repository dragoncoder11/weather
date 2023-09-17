import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/classes/weathermodel.dart';

class WeatherService {
   Future<WeatherModel> getweather({required String cityname}) async {
    String apikey = 'a8cad49bb2bf4d7f8b9153837231709';
    String baseurl = 'http://api.weatherapi.com/v1';

    Uri url =
        Uri.parse('$baseurl/forecast.json?key=$apikey&q=$cityname&days=1');

    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weather = WeatherModel.fromjson(data);
    return weather;
  }
}

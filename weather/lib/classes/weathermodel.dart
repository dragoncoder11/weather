class WeatherModel {
  final String cityname;
 final String date;
 final String imageurl;
 final String weatherstatename;
 final double avgtemp;
 final double mintemp;
 final double maxtemp;
  WeatherModel({
    required this.cityname,
    required this.date,
    required this.imageurl,
    required this.weatherstatename,
    required this.avgtemp,
    required this.mintemp,
    required this.maxtemp,
  });
  factory WeatherModel.fromjson(dynamic data) {
    var jsondata = data['forecast']['forecastday'][0];
    return WeatherModel(
        cityname: data['location']['name'],
        date: data['location']['localtime'],
        imageurl: data['current']['icon'],
        weatherstatename: jsondata['condition']['text'],
        avgtemp: jsondata['day']['avgtemp_c'],
        mintemp: jsondata['day']['mintemp_c'],
        maxtemp: jsondata['day']['maxtemp_c']);
  }
 
}

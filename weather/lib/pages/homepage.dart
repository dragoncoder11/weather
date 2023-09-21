import 'no_weather_page.dart';
import 'package:flutter/material.dart';
import 'package:weather/classes/weathermodel.dart';
import 'package:weather/classes/weatherservice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromARGB(195, 11, 57, 136),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.fiber_new,
                        size: 40,
                        color: Colors.black,
                      ),
                      Text(
                        'Weather App',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 44,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18)),
                      child: TextField(
                        onSubmitted: (String cityname) async {
                          WeatherModel weathermodel =
                              await WeatherService().getweather(cityname: cityname);
                          print(weathermodel.cityname.toString());
                        },
                        cursorColor: Colors.grey[700],
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(18)),
                            suffixIcon: Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: Colors.white))),
                      )),
                ),
              ],
            ),
          ),
          
          Column(children: [
         NoWeatherPage()
          ],)
        ],
      ),
    );
  }
}

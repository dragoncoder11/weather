import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/weather_cubit/get_weather_states.dart';

import '../../classes/weatherservice.dart';

class GetWeatherCubit extends Cubit<WeatherStates>{
  GetWeatherCubit(super.initialState);
getweather({required cityname}) async{
 await WeatherService().getweather(cityname: cityname);
}
  
}
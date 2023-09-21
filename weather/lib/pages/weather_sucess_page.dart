import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class WeatherSuccessPage extends StatelessWidget {
  const WeatherSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Column(children: [
          Lottie.asset('animation_lmtgf9uv.json')
        ],) ,
      ),
    );
  }
}
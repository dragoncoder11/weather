import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NoWeatherPage extends StatefulWidget {
  const NoWeatherPage({super.key});

  @override
  State<NoWeatherPage> createState() => _NoWeatherPageState();
}

class _NoWeatherPageState extends State<NoWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Lottie.asset('animations/animation_lmtgf9uv.json',
        height: 200,width: 300,fit: BoxFit.cover,repeat: true,reverse: true),
      const  SizedBox(height: 60,),
      Text('no weather yet',style:GoogleFonts.abhayaLibre(fontSize: 30),)
      ],),
    );
  }
}
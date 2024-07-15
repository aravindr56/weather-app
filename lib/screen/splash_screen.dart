import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:weather_app/screen/home_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WeatherController());
    Future.delayed(Duration(seconds: 5));(){
      Get.offAll(
      HomeScreen(),
      transition: Transition.fadeIn,
      duration: Duration(seconds: 2),
      );
    };
    return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
        child: Image(image: AssetImage('assets/icon.jpg',)
          ,),

    ),
    );
  }
}

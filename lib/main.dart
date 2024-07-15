import 'package:flutter/material.dart';
import 'package:weather_app/screen/home_screen.dart';
import 'package:weather_app/screen/splash_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashScreen() ,
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
    );
  }
}

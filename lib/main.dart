import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:foodpanda_clone/screens/home_screen.dart';
// ignore: unused_import
import 'package:foodpanda_clone/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodPanda UI clone',
      home: SplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha_app/modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
          color: Colors.amber[600],
      )),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}


import 'package:app_coffee/view/home%20page/aplash.dart';
import 'package:app_coffee/view/home%20page/coffee_shop.dart';
import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashCreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
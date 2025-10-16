import 'package:flutter/material.dart';
// import 'package:foodapp/multiplyscreen/home.dart';
import 'package:foodapp/project/project_screen_page.dart';
// import 'package:foodapp/productScreen/home_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProjectScreenPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/multiplyscreen/components/body.dart';

class HomeDisplayScreen extends StatelessWidget {
  const HomeDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: BodyScreen());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: NormalColor,
      elevation: 1,
      centerTitle: true,
      title: Text('Cart', style: TextStyle(fontSize: 20)),
    );
  }
}

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String imagPath;
  final String textPath;
  const Screen1({super.key, required this.imagPath, required this.textPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagPath),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textPath,
            style: TextStyle(fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

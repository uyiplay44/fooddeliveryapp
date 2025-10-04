import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single Child Scroll'), elevation: 8),
      body: SafeArea(
        child: Scrollbar(
          thickness: 10,
          trackVisibility: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SizedBox(child: Column(children: [getItem(1)])),
          ),
        ),
      ),
    );
  }
}

Widget getItem(int index) {
  return Center(
    child: Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.red),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.amber),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.brown),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.deepOrange),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.green),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.cyan),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.indigo),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.purple),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
        Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.deepPurple),
          child: Text('Hello 1', style: TextStyle(fontSize: 40)),
        ),
      ],
    ),
  );
}

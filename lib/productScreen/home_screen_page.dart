import 'package:flutter/material.dart';
import 'package:foodapp/data/data.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gride'), centerTitle: true),
      body: SafeArea(
        child: GridView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      height: 130,
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            cartItems[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(cartItems[index].name),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(cartItems[index].name),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 0,
                      top: 0,
                      child: Icon(Icons.circle),
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.80,
          ),
        ),
      ),
    );
  }
}

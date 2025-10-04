import 'package:flutter/material.dart';
import 'package:foodapp/lesson/cart_screen.dart';
import 'package:foodapp/lesson/constant.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Category", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (content) => const CartScreen()),
              );
            },
            child: Icon(Icons.shopping_cart, color: Colors.white),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: primaryColor),
          ),
          title: Text(
            'Bags',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '\$100',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
            child: Text('Add'),
          ),
        ),
      ),
    );
  }
}

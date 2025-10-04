import 'package:flutter/material.dart';
import 'package:foodapp/lesson/constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(itemBuilder: (context, index) => ItemsProduct()),
        ],
      ),
    );
  }
}

class ItemsProduct extends StatelessWidget {
  const ItemsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const ItemsProduct();
  }
}

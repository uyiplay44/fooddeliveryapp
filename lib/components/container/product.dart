import 'package:flutter/material.dart';
import 'package:foodapp/components/container/cart_item_page.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200, // Set a fixed height or use MediaQuery if needed
                  child: ListView.builder(
                    itemCount: myCategories.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        'lib/images/${myCategories[index].image}', // Assuming 'image' is a property of CategoryModel
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

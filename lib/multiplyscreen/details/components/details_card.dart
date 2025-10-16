import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/model_Item/Product.dart' show Product;
import 'package:foodapp/multiplyscreen/details/components/body.dart';

class DetailsCard extends StatelessWidget {
  final Product product;
  const DetailsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DetailScreenColor,
      appBar: ItemDetailCard(),
      body: BodyDetailScreen(product: product),
    );
  }

  AppBar ItemDetailCard() =>
      AppBar(backgroundColor: DetailScreenColor, elevation: 0);
}

import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> product = [
  Product(
    id: 1,
    title: 'Office Code',
    price: 234,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo2.jpg',
    color: Color(0xFF0099F7),
  ),
  Product(
    id: 1,
    title: 'Sauce Meat',
    price: 80,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo2.jpg',
    color: Color(0xFFD39D38),
  ),
  Product(
    id: 2,
    title: 'Rosted Chicken',
    price: 40,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo2.jpg',
    color: Color(0xFF5614B0),
  ),
  Product(
    id: 3,
    title: 'Delicious Meal',
    price: 137,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo3.jpg',
    color: Color(0xFF2a5298),
  ),
  Product(
    id: 4,
    title: 'Boiled Chicken',
    price: 50,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo4.jpg',
    color: Color(0xffd04ed6),
  ),
  Product(
    id: 5,
    title: 'Kitchen Meal',
    price: 125,
    size: 12,
    description:
        'This meal is a delicious meal and it is good and healthy for the body',
    image: 'lib/images/photo5.jpg',
    color: Color(0xFF6a3093),
  ),
  Product(
    id: 6,
    title: 'Super Meal',
    price: 150,
    size: 12,
    description:
        'Customer order this meal and said that everything look perfect.',
    image: 'lib/images/photo6.png',
    color: Color(0xFFF29492),
  ),
  Product(
    id: 7,
    title: 'Water Fish Prepared',
    price: 250,
    size: 12,
    description: 'Accepted order for this delicious meal',
    image: 'lib/images/photo7.png',
    color: Color(0xFFd04ed6),
  ),
];

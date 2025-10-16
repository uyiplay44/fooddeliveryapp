import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/model_Item/Product.dart';
import 'package:foodapp/multiplyscreen/components/item-card.dart';
import 'package:foodapp/multiplyscreen/details/components/details_card.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DefaultPaddin,
            vertical: VerticalPaddin / 2,
          ),
          child: Text(
            'Women',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 30,
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.78,
            ),
            itemBuilder: (context, index) => ItemCard(
              key: ValueKey(product[index].id),
              product: product[index],
              press: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsCard(product: product[index]),
                  ),
                ),
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['New Item', 'Arrived', 'Men', 'Women', 'Shopping'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HoziontalPaddin / 2),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: DefaultPaddin),
    child: GestureDetector(
      onTap: () => {
        setState(() {
          selectedIndex = index;
        }),
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? Colors.black : LightColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 3,
            width: 50,
            color: selectedIndex == index ? Colors.purple : Colors.grey,
          ),
        ],
      ),
    ),
  );
}

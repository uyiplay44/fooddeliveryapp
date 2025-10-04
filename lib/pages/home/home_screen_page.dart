import 'package:flutter/material.dart';
import 'package:foodapp/pages/search/search_page.dart';

class HomeScreenPage extends StatelessWidget {
  final Color colorPath;
  final String imgPath;
  final String textPath;
  final String ordertextPath;
  final String displayTextPath;

  const HomeScreenPage({
    super.key,
    required this.colorPath,
    required this.imgPath,
    required this.textPath,
    required this.ordertextPath,
    required this.displayTextPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: colorPath,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textPath,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      // SizedBox(height: 5),
                      Text(
                        displayTextPath,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchPage(),
                              ),
                            ),
                          },
                          child: Text(
                            ordertextPath,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(imgPath, height: 180),
            ],
          ),
        ),
      ),
    );
  }
}

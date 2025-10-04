import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/home_screen_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int currentpageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Menu', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Color(0XFfd7204c),
      ),
      body: SafeArea(
        child: Scrollbar(
          trackVisibility: true,
          thickness: 6,
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, size: 30),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey[400]),
                              Text(
                                'Choose your Location',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'lib/images/perosnal.jpg',
                                  fit: BoxFit.cover,
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi Customer', style: TextStyle(fontSize: 20)),
                          Text(
                            'Don"t Wait, Order Your Food!',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 220,
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo4.png',
                          textPath: 'Burgers with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount burger\n at a lower price with our\n special discount offer',
                        ),
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo21.png',
                          textPath: 'Burgers with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount burger\n at a lower price with our\n special discount offer',
                        ),
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo71.png',
                          textPath: 'Pizza with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount Pizza\n at a lower price with our\n special discount offer',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: SlideEffect(spacing: 40.0, dotHeight: 10.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Catergories',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sell All',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.20),
                                  child: Image.asset(
                                    'lib/images/photo71.png',
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('Pizza'),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.20),
                                  child: Image.asset(
                                    'lib/images/photo81.png',
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('Chicken'),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.20),
                                  child: Image.asset(
                                    'lib/images/photo4.png',
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('Burgers'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo21.png',
                          textPath: 'Burgers with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount burger\n at a lower price with our\n special discount offer',
                        ),
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo21.png',
                          textPath: 'Burgers with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount burger\n at a lower price with our\n special discount offer',
                        ),
                        HomeScreenPage(
                          colorPath: Color(0XFfd7204c),
                          imgPath: 'lib/images/photo71.png',
                          textPath: 'Pizza with 10% \n Discount!',
                          ordertextPath: 'Order Now',
                          displayTextPath:
                              'Enjoy our discount Pizza\n at a lower price with our\n special discount offer',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

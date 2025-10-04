import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/home_page.dart';
import 'package:foodapp/screen/screen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //page controller area
  final PageController _pageController = PageController();

  //index page select
  String buttonText = 'Skip';

  //currentpageindex
  int currentpageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              currentpageindex = index;
              if (index == 2) {
                buttonText = 'Finished';
              } else {
                buttonText = 'Skip';
              }
              setState(() {});
            },
            controller: _pageController,
            children: [
              Screen1(
                imagPath: 'lib/images/delivery.png',
                textPath:
                    'Welcome to Burger Home, This is a working class member of the state and we delivery everywhere in the country.',
              ),
              Screen1(
                imagPath: 'lib/images/track1.png',
                textPath: 'Welcome to Burger Home',
              ),
              Screen1(
                imagPath: 'lib/images/maneating.png',
                textPath: 'Welcome to Burger Home',
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Text(buttonText),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: SlideEffect(
                    spacing: 30.0,
                    radius: 10.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: Colors.black,
                    activeDotColor: Colors.red,
                  ),
                ),
                currentpageindex == 2
                    ? const SizedBox(width: 10)
                    : GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

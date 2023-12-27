import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'reg_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: SvgPicture.asset("assets/pp_logo.svg"),
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/landing_bg.jpg",
            width: screenWidth,
            height: screenHeight / 1.3,
            fit: BoxFit.cover,
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Image.asset(
          //     "assets/black_circle.png",
          //     width: screenWidth,
          //   ),
          // ),

          GestureDetector(
            onVerticalDragEnd: (DragEndDetails details) {
              if (details.primaryVelocity! < 0) {
                // Positive velocity indicates upward swipe (swipe up)
                print('Swipe Up Detected!');

                Navigator.of(context).pushAndRemoveUntil(_createRoute(), (route) => false,);
              }
            },
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: screenWidth,
                    height: screenHeight / 2.4,
                    margin: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(500, 350),
                        topRight: Radius.elliptical(500, 350),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "To begin your\nHouse hunt\nSwipe Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/pp_navigation_image.png",
                          width: 50,
                        ),
                      ),
                    ],
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




PageRouteBuilder _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RegScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOutQuart;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
import 'package:flutter/material.dart';

import 'homepage.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({super.key, this.currentIndex = 0});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isVisible = true;

  late PageController _pageController;
  int _currentIndex = 0;

  IconData middleIcon = Icons.add_rounded;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
    _pageController = PageController(initialPage: _currentIndex);
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(microseconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_currentIndex == 0) {
      middleIcon = Icons.add_rounded;
    } else if (_currentIndex == 1) {
      middleIcon = Icons.add_rounded;
    } else if (_currentIndex == 2) {
      middleIcon = Icons.close_rounded;
    } else if (_currentIndex == 3) {
      middleIcon = Icons.add_rounded;
    } else if (_currentIndex == 4) {}

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          const HomePage(),
          Container(color: Colors.cyan),
          Container(color: Colors.green),
          Container(color: Colors.red),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  _navigateToPage(0);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                ),
                child: const Icon(
                  Icons.home_outlined,
                  size: 30.0,
                  // color: homebtnColor,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  _navigateToPage(1);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                ),
                child: const Icon(
                  Icons.email_outlined,
                  size: 30.0,
                  // color: searchbtnColor,

                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  _navigateToPage(2);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                ),
                child: const Icon(
                  Icons.notifications_outlined,
                  size: 30.0,
                  // color: searchbtnColor,

                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  _navigateToPage(3);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
                      size: 30.0,
                      // color: hotdealsbtnColor,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            // Expanded(
            //   child: TextButton(
            //     onPressed: () {
            //       _navigateToPage(4);
            //     },
            //     style: ButtonStyle(
            //       overlayColor: MaterialStateColor.resolveWith(
            //           (states) => Colors.transparent),
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(
            //           Icons.person_rounded,
            //           size: 30.0,
            //           // color: profilebtnColor,
            //           color: Colors.black,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

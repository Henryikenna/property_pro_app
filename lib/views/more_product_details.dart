import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/slanted_box_widget.dart';

class MoreProductDetailsScreen extends StatelessWidget {
  const MoreProductDetailsScreen({
    super.key,
    required this.noOfBedrooms,
    required this.imageLink,
    required this.itemName,
    required this.itemPrice,
  });

  final int noOfBedrooms;
  final String imageLink;
  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    // print(screenHeight);
    // print(screenWidth);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 70,
        actions: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "assets/pfp_img.jpg",
              width: 38,
              height: 38,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/concrete_bg.jpg",
            width: double.infinity,
            // height: screenHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(height: screenHeight / 7),
                  const SizedBox(height: 115),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "$noOfBedrooms Bedroom Apartment",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight / 20),
                          Center(
                            child: ClipPath(
                              clipper: SlantedBoxClipper(),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 40,
                                  left: 20,
                                  right: 20,
                                  bottom: 20,
                                ),
                                width: screenWidth,
                                height: screenHeight,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: screenHeight / 18),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageLink,
                                // width: 188,
                                // height: 223,
                                width: screenWidth / 2.09,
                                height: screenHeight / 3.6,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Agent Rating",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Wrap(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 18,
                                    color: Color(0xFFFF8243),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 18,
                                    color: Color(0xFFFF8243),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 18,
                                    color: Color(0xFFFF8243),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 18,
                                    color: Color(0xFFFF8243),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 18,
                                    color: Color(0xFFFF8243),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Agent Mobile: ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "09038736829",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 13,
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    ProjectColors.primaryBlue,
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Book a Visit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 13,
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFF0F0F0),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Chat Agent",
                                  style: TextStyle(
                                    color: ProjectColors.primaryBlack,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Locate Apartment",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset(
                                  "assets/map_img.png",
                                  width: double.infinity,
                                  height: 190,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

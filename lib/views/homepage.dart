import 'package:flutter/material.dart';

import '../widgets/homepage_item_row.dart';
import '../widgets/slanted_box_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Apartments in Lekki",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  // width: screenWidth,
                  // height: screenHeight,
                  //   decoration: const BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.elliptical(0, 100),
                  //       topRight: Radius.elliptical(100, 100),
                  //     ),
                  //   ),
                  //   child: const Text("data"),
                  // ),

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
                        child:  Column(
                          children: [
                            HomepageItemRow(
                              buildContext: context,
                              imageLink: "assets/img1.jpg",
                              itemName:
                                  "A 3 bedroom apartment in the Heart of lekki, Fully furnished",
                              itemPrice: "3,000,000",
                              noOfBedrooms: 3,
                            ),
                            HomepageItemRow(
                              buildContext: context,
                              imageLink: "assets/img2.jpg",
                              itemName:
                                  "A 2 bedroom apartment in the Heart of lekki, Fully furnished",
                              itemPrice: "2,500,000",
                              noOfBedrooms: 2,
                            ),
                            HomepageItemRow(
                              buildContext: context,
                              imageLink: "assets/img3.jpg",
                              itemName:
                                  "A 1 bedroom apartment in the Heart of lekki, Fully furnished",
                              itemPrice: "1,000,000",
                              noOfBedrooms: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
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




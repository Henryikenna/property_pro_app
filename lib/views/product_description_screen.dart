import 'package:flutter/material.dart';
import 'package:property_pro/utils/image_list.dart';
import 'package:property_pro/widgets/blue_btn.dart';

import '../widgets/slanted_box_widget.dart';
import 'more_product_details.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({
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
                          const SizedBox(height: 10),
                          Center(
                            child: SizedBox(
                              width: screenWidth / 1.2,
                              child: Text(
                                "$itemName. Apartment comes fully furnished",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            itemPrice,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlueBtn(
                                buildContext: context,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MoreProductDetailsScreen(
                                      noOfBedrooms: noOfBedrooms,
                                      imageLink: imageLink,
                                      itemName: itemName,
                                      itemPrice: itemPrice,
                                    );
                                  }));
                                },
                                btnText: "Details",
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.phone_outlined,
                                size: 18,
                              ),
                              const SizedBox(width: 3),
                              const Icon(
                                Icons.email_outlined,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Similar Locations",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: screenHeight / 5.4,
                                child: ListView.builder(
                                  padding: const EdgeInsets.only(left: 20),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            imageList[index],
                                            // width: 188,
                                            // height: 223,
                                            width: screenWidth / 3.2,
                                            height: screenHeight / 5.4,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                      ],
                                    );
                                  },
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

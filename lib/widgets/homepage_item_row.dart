import 'package:flutter/material.dart';

import '../views/product_description_screen.dart';

class HomepageItemRow extends StatelessWidget {
  const HomepageItemRow({
    super.key,
    required this.imageLink,
    required this.itemName,
    required this.itemPrice,
    required this.noOfBedrooms,
    required this.buildContext,
  });

  final BuildContext buildContext;
  final String imageLink;
  final String itemName;
  final String itemPrice;
  final int noOfBedrooms;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(buildContext).size.width;
    var screenHeight = MediaQuery.of(buildContext).size.height;

    // print(screenHeight);
    // print(screenWidth);

    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductDescriptionScreen(
                noOfBedrooms: noOfBedrooms,
                imageLink: imageLink,
                itemName: itemName,
                itemPrice: itemPrice,
              );
            }));
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageLink,
                  // width: 122,
                  // height: 148,
                  width: screenWidth / 3.2,
                  height: screenHeight / 5.4,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      itemPrice,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 18,
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.email_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

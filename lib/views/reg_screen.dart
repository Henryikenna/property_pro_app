import 'package:flutter/material.dart';
import 'package:property_pro/widgets/grey_btn.dart';

import '../widgets/blue_btn.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/regScreenImg.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
            width: double.infinity,
            height: screenHeight / 1.6,
            // height: 500,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: screenWidth / 1.4,
            child: const Text(
              "Buy or Rent an apartment with ease",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                height: 1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GreyBtn(
              buildContext: context,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SigninScreen();
                }));
              },
              btnText: "Login",
            ),
            SizedBox(
              width: screenWidth / 25,
            ),
            BlueBtn(
              buildContext: context,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignupScreen();
                }));
              },
              btnText: "Sign Up",
            ),
          ],
        ),
      ),
    );
  }
}

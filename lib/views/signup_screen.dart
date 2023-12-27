import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_pro/utils/colors.dart';

import '../widgets/blue_btn.dart';
import '../widgets/my_form_input.dart';
import 'signin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: screenHeight / 12),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const MyFormInput(labelText: "E-mail"),
                const MyFormInput(labelText: "Phone Number"),
                const MyFormInput(
                  labelText: "Password",
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: Colors.black,
                  ),
                ),
                const MyFormInput(
                  labelText: "Confirm Password",
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                BlueBtn(
                                buildContext: context,
                  onPressed: () {},
                  btnText: "Sign Up",
                ),
                const SizedBox(height: 5),
                Wrap(
                  spacing: 10,
                  children: [
                    Image.asset(
                      "assets/fb_icon.png",
                      width: 25,
                    ),
                    Image.asset(
                      "assets/google_icon.png",
                      width: 25,
                    ),
                    Image.asset(
                      "assets/twitter_icon.png",
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    children: [
                      TextSpan(
                        text: "log in",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const SigninScreen();
                            }));
                          },
                        style: TextStyle(
                          color: ProjectColors.primaryBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class BlueBtn extends StatelessWidget {
  const BlueBtn({
    super.key,
    required this.onPressed,
    required this.btnText,
    required this.buildContext,
  });

  final BuildContext buildContext;
  final void Function() onPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(buildContext).size.width;
    var screenHeight = MediaQuery.of(buildContext).size.height;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
           EdgeInsets.symmetric(
            // horizontal: 40,
            
            horizontal: screenWidth / 9.8,
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
      child: Text(
        btnText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    );
  }
}

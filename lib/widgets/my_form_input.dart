import 'package:flutter/material.dart';

class MyFormInput extends StatelessWidget {
  const MyFormInput({
    super.key,
    required this.labelText, this.suffixIcon,
  });

  final String labelText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          
          decoration: InputDecoration(
            label: Text(
              labelText,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide()),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide()),
            suffixIcon: suffixIcon,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

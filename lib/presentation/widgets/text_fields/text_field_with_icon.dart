import 'package:flutter/material.dart';

class TextFieldWithIcon extends StatelessWidget {
  final String hintText;
  final IconData suffixIcon;

  const TextFieldWithIcon({
    required this.hintText,
    required this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(
              suffixIcon,
              size: 30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 246, 219, 219),
              ),
            ),
          ),
          style: const TextStyle(
            fontFamily: 'Futura',
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

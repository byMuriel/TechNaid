import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;

  const PrimaryTextField({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/dialog_successful.dart';

class BlueButtonAfirmative extends StatelessWidget {
  final String route;
  final String buttonText;

  const BlueButtonAfirmative({
    required this.route,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // En el botón "Update"

      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const DialogSuccessful(),
        ));
      },

      child: Container(
        width: MediaQuery.of(context).size.width * 0.30,
        height: MediaQuery.of(context).size.width * 0.080,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 27, 74, 154),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 204, 204, 204),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Future',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              shadows: [
                Shadow(
                  offset: Offset(1, 0),
                  blurRadius: 2,
                  color: Color.fromARGB(255, 148, 147, 147),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

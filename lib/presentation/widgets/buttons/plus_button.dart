import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/create_new_patient.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Agregamos un GestureDetector para capturar los toques
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CreateNewPatient(),
          ),
        );
      },
      child: Container(
        width: 75,
        height: 75,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 21, 57, 120),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 60,
          ),
        ),
      ),
    );
  }
}


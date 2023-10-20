import 'package:flutter/material.dart';

class TittlePatientList extends StatelessWidget {
  final String text;

  const TittlePatientList(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Futura', // Familia de fuente predeterminada
        fontSize: 30.0, // Tamaño de fuente predeterminado
      ),
    );
  }
}
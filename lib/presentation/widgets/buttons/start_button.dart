import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.width * 0.085, 
        decoration: const BoxDecoration(
          color: Colors.white, // Fondo blanco
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30), // Bordes izquierdo con forma semicircular
            right: Radius.circular(30), // Bordes derecho con forma semicircular
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 55, 54, 54), // Sombra azul
              spreadRadius: 1, // Controla la expansión de la sombra
              blurRadius: 5, // Controla el radio de desenfoque de la sombra
              offset: Offset(0, 3), // Controla el desplazamiento de la sombra
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Start',
            style: TextStyle(
              color: Color.fromARGB(255, 1, 44, 79),
              fontFamily: 'Future',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              shadows: [
                Shadow(
                  offset: Offset(1, 0), // Desplazamiento de la sombra
                  blurRadius: 3, // Radio de desenfoque de la sombra
                  color: Color.fromARGB(255, 148, 147, 147), // Color de la sombra
                  ),
                ],// Texto azul
              ),
            ),
          ),
        ),
      );
  }
}
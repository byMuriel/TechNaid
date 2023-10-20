import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';


class DialogSuccessful extends StatelessWidget {


  const DialogSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              // Navegar a la página MainPage cuando se toque el Card
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
            },
            child: Card(
              elevation: 3,
              color: const Color.fromARGB(255, 197, 225, 179),
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 500,
                height: 100,
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Color.fromARGB(255, 56, 117, 58),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Register successfully added',// Usar el texto proporcionado como parámetro
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 117, 58),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

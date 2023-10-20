import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/buttons/start_button.dart';


class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.4,
            image: AssetImage('lib/presentation/assets/images/img_01.jpg'),
            fit: BoxFit.cover, 
          ),
        ),

        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Futura',
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 55, 54, 54),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 100),

              //StartButton Path for Future Modifications: lib\presentation\widgets\buttons\start_button.dart
              StartButton(),
            ],
          ),
        ),
      ),
    );
  }
}



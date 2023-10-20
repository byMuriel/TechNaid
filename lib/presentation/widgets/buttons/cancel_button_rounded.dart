import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';

class CancelButtonRounded extends StatelessWidget {
  const CancelButtonRounded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.cancel_sharp),
      color: Colors.grey,
      iconSize: 35,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ), 
        );
      }
    );
  }
}
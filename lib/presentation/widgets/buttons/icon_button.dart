import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ),
        );
      },
      icon: const Icon(
        Icons.edit,
        size: 30,
        color: Colors.black45,
      ),
    );
  }
}

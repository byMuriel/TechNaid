import 'package:flutter/material.dart';

class TittleTextCard extends StatelessWidget {
  final String textContent;

  const TittleTextCard({
    required this.textContent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
     style: const TextStyle(
        fontSize: 25,
        fontFamily: 'Futura',
      ),
    );
  }
}

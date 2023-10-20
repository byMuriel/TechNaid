import 'package:flutter/material.dart';


class CancelButtonLarge extends StatelessWidget {
  final Widget Function(BuildContext context) routeBuilder;

  const CancelButtonLarge({
    required this.routeBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final Widget page = routeBuilder(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.30,
        height: MediaQuery.of(context).size.width * 0.080,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 239, 238, 238),
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
        child: const Center(
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Color.fromARGB(255, 178, 177, 177),
              fontFamily: 'Future',
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppBarNaiTech2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNaiTech2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('MMMM d', 'en_US').format(currentDate);
    final year = DateFormat('y', 'en_US').format(currentDate);

    return AppBar(
      backgroundColor: const Color.fromARGB(255, 239, 231, 226),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      title: const Text(
        'Hi, Welcome',
        style: TextStyle(
          fontFamily: 'Futura',
          fontSize: 28,
          color: Color.fromARGB(255, 27, 74, 154),
        ),
      ),
      actions: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 15),
                  Text(
                    '$formattedDate, $year',
                    style: const TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 18,
                      color: Color.fromARGB(255, 27, 74, 154),
                    ),
                  ),
                ],
              ),
                
            ),

          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

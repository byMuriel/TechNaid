import 'package:flutter/material.dart';


class AppBarNaiTech extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNaiTech({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        Row(
          children: <Widget>[
            const Text(
              'Device 01H-Jk-012',
              style: TextStyle(
                fontFamily: 'Futura',
                fontSize: 18,
                color: Color.fromARGB(255, 31, 31, 32),
              ),
            ),
            const SizedBox(width: 10), // Espacio entre elementos
            IconButton(
              icon: const Icon(Icons.bluetooth),
              iconSize: 23,
              padding: const EdgeInsets.all(1.0),
              tooltip: 'Show Bluetooth',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.battery_5_bar),
              iconSize: 23,
              padding: const EdgeInsets.all(1.0),
              tooltip: 'Show Battery',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a battery')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              iconSize: 23,
              padding: const EdgeInsets.all(1.0),
              tooltip: 'Show Battery',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a battery')),
                );
              },
            ),
          ],
        ),
      ],
      actionsIconTheme: const IconThemeData(
        color: Color.fromARGB(255, 27, 74, 154),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

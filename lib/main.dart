import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/start_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontFamily:
                  'Futura',
            ),
          ),
        ),
        home: const StartPage());
  }
}

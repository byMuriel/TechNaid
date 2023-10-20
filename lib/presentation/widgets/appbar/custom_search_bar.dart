import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/no_patients_page.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NoPatientsPage(),
              ));
            },
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 20, 14, 14)),
                  ),
                ),
                style: const TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 27, 74, 154),
            ),
            child: const Center(
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

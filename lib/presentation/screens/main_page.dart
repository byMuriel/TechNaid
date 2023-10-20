import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/appbar/app_bar_naitech.dart';
import 'package:flutter_application_1/presentation/widgets/appbar/custom_search_bar.dart';
import 'package:flutter_application_1/presentation/widgets/patient_list/patient_list.dart';
import 'package:flutter_application_1/presentation/widgets/buttons/plus_button.dart';
import 'package:flutter_application_1/presentation/widgets/patient_list/tittle_patient_list.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Appbar Path for Future Modifications: lib\presentation\widgets\appbar\app_bar_naitech.dart
        appBar: AppBarNaiTech(),
        body: Column(
          children: [
            SizedBox(height: 5),

            //TittlePatientList Path for Future Modifications: lib\presentation\widgets\patient_list\tittle_patient_list.dart
            TittlePatientList('Patient List'),

            Center(
              child: Text(
                '''Below, you can find the complete list of all registered patients. Select one \n to view more details or perform specific actions''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 18,
                  color: Color(
                      0xFF303030), 
                ),
              ),
            ),
            //Searchbar Path for Future Modifications: lib\presentation\widgets\appbar\custom_search_bar.dart
            CustomSearchBar(),
            SizedBox(height: 25),

            //PatientList Path for Future Modifications: lib\presentation\widgets\patient_list\patient_list.dart
            PatientList(),
            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Alinea el botón a la derecha
              children: [
                //PlusButton Path for Future Modifications: lib\presentation\widgets\buttons\plus_button.dart
                PlusButton(),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/appbar/app_bar_naitech_2.dart';
import 'package:flutter_application_1/presentation/widgets/appbar/custom_search_bar.dart';
import 'package:flutter_application_1/presentation/widgets/patient_list/tittle_patient_list.dart';


class NoPatientsPage extends StatefulWidget {
  const NoPatientsPage({Key? key}) : super(key: key);

  @override
  State<NoPatientsPage> createState() => _NoPatientsPage();
}

class _NoPatientsPage extends State<NoPatientsPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Appbar Path for Future Modifications: lib\presentation\widgets\appbar\app_bar_naitech.dart
        appBar: AppBarNaiTech2(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            //TittlePatientList Path for Future Modifications: lib\presentation\widgets\patient_list\tittle_patient_list.dart
            TittlePatientList('Patient List'),
            //Searchbar Path for Future Modifications: lib\presentation\widgets\appbar\custom_search_bar.dart
            CustomSearchBar(),
          ],
        ),
      ),
    );
  }
}

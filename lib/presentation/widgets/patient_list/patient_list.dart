import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';
import 'package:flutter_application_1/presentation/widgets/patient_list/patient_data.dart';
import 'package:flutter_application_1/presentation/screens/edit_patient.dart';


class PatientList extends StatelessWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
          buildCard(context, 'Andreas Manrique', '27/03/1975', 'Female'),
          buildCard(context, 'Andrea Manrique', '27/03/1975', 'Femal'),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, String patientName, String birthDate,
      String gender) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Bordes redondeados
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 236, 234), // Color avellana
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              // Datos paciente
              PatientData(
                patientName: patientName,
                birthDate: birthDate,
                gender: gender,
              ),

              // EspacioCentrall
              const SizedBox(width: 25),

              // Iconos
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const EditPatient(),
                        ), // Navega a MainPage()
                      );
                    },
                    icon: const Icon(
                      Icons.edit,
                      size: 30,
                      color: Color.fromARGB(255, 96, 95, 95),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const MainPage(),
                        ), // Navega a MainPage()
                      );
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: Color.fromARGB(255, 165, 14, 3),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const MainPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 40,
                      color: Color.fromARGB(255, 8, 65, 161),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}






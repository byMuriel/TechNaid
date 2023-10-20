/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/patient_list/patient_data.dart';

class PatientDataState extends State<PatientData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Nombre del Paciente
        Text(
          widget.patientName,
          style: const TextStyle(
            fontSize: 22,
            fontFamily: 'Futura',
            fontWeight: FontWeight.w500,
            color: Colors.black, // Color de texto blanco
          ),
        ),

        // Fecha de nacimiento del paciente
        Text.rich(
          TextSpan(
            text: 'Birthdate: ',
            style: const TextStyle(
              fontSize: 22,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.birthDate,
                style: const TextStyle(
                  fontSize: 17,
                  fontFamily: 'FuturaLight',
                  color: Color.fromARGB(255, 97, 96, 96),
                ),
              ),
            ],
          ),
        ),

        // Género del paciente
        Text.rich(
          TextSpan(
            text: 'Gender: ',
            style: const TextStyle(
              fontSize: 22,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.gender,
                style: const TextStyle(
                  fontSize: 17,
                  fontFamily: 'FuturaLight',
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 97, 96, 96),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}*/

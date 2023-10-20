import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_page.dart';
import 'package:flutter_application_1/presentation/widgets/buttons/cancel_button_rounded.dart';
import 'package:flutter_application_1/presentation/widgets/cards/tittle_text_card.dart';
import 'package:flutter_application_1/presentation/widgets/text_fields/primary_text_field.dart';
import 'package:flutter_application_1/presentation/widgets/text_fields/text_field_with_icon.dart';
import 'package:flutter_application_1/presentation/widgets/buttons/cancel_button_large.dart';
import 'package:flutter_application_1/presentation/widgets/buttons/blue_button_afirmative.dart';

class EditPatient extends StatelessWidget {
  const EditPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 176, 170, 166),
        child: Center(
          child: Card(
            elevation: 3,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.white, width: 2.0),
            ),
            child: Container(
              width: 500,
              height: 510,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      SizedBox(width: 270),
                      //CancelButtonRounded Path for Future Modifications: lib\presentation\widgets\buttons\cancel_button_rounded.dart
                      CancelButtonRounded(),
                    ],
                  ),
                  const Center(
                      //TittleTextCard Path for Future Modifications: lib\presentation\widgets\cards\tittle_text_card.dart
                      child: TittleTextCard(
                    textContent: 'Edit Patient',
                  )),
                  const SizedBox(height: 10),
                  //Imputs de Formulario
                  const Column(children: [
                    //PrimaryTextField Path for Future Modifications: lib\presentation\widgets\text_fields\primary_text_field.dart
                    PrimaryTextField(
                      hintText: '*Name',
                    ),
                    SizedBox(height: 10),
                    //PrimaryTextField Path for Future Modifications: lib\presentation\widgets\text_fields\primary_text_field.dart
                    PrimaryTextField(
                      hintText: '*Surname',
                    ),
                    SizedBox(height: 10),
                    //TextFieldWithIcon Path for Future Modifications: lib\presentation\widgets\text_fields\lib\presentation\widgets\text_fields\text_field_with_icon.dart
                    TextFieldWithIcon(
                      hintText: '*Birthday',
                      suffixIcon: Icons.calendar_month_sharp,
                    ),
                    SizedBox(height: 10),
                    //TextFieldWithIcon Path for Future Modifications: lib\presentation\widgets\text_fields\lib\presentation\widgets\text_fields\text_field_with_icon.dart
                    TextFieldWithIcon(
                      hintText: '*Gender',
                      suffixIcon: Icons.expand_more,
                    ),
                  ]),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //CancelButtonRounded Path for Future Modifications: lib\presentation\widgets\buttons\cancel_button_large.dart
                      CancelButtonLarge(
                        routeBuilder: (context) => const MainPage(),
                      ),
                      //BlueButtonAfirmative Path for Future Modifications: lib\presentation\widgets\buttons\blue_button_afirmative.dart
                      const BlueButtonAfirmative(
                        route: 'DialogSuccessfull()',
                        buttonText: 'Update',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

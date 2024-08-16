import 'package:doctor_app/features/patient/reservation/widgets/description_input.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:doctor_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'widgets/info_list.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(children: [
           InfoListWidget(),
           const DescriptionInputWidget(isChecked: true,),
           RectBlueButton(
             label: 'تایید و ادامه',
             isEnabled: true, // or false for the disabled state
             onPressed: () {
               // Handle the button press action
             },
           )
         ]),
       ),
     ),
   );
  }
}



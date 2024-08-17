import 'package:doctor_app/features/patient/reservation/widgets/description_input.dart';
import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:doctor_app/widgets/rounded_button.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/info_list.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(children: [
           TopBar(
               text: 'انتخاب زمان مشاوره',
               rightIcon: const Icon(
                 Icons.chevron_right,
                 size: 35,
                 color: Color(0xff3D3D3D),
               ),
               onClick1: () {},
               onClick2: () {
                 context.pop();
               }),
           StepIndicator(currentStep: 2,),
           InfoListWidget(),
           const DescriptionInputWidget(isChecked: true,),
           RectBlueButton(
             label: 'تایید و ادامه',
             isEnabled: true, // or false for the disabled state
             onPressed: () {
               context.go("/reservation/choose_date/personal_info/doctor_info_page");
             },
           )
         ]),
       ),
     ),
   );
  }
}



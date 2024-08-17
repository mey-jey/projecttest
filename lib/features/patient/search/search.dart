import 'package:doctor_app/widgets/patient_main_topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';
import '../../../utils/theme.dart';
import '../../../widgets/patient_main_appointment.dart';
import '../../../widgets/patient_main_bottom_section.dart';
import '../../../widgets/patient_main_header.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.backgroundBaseColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PatientMainTopBar(),
              PatientMainHeader(),
              PatientMainAppointments(),
              PatientMainBottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}

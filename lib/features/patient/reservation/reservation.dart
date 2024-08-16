import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme.dart';
import '../../../widgets/patient_reservation_address.dart';
import '../../../widgets/patient_reservation_header.dart';

class Reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/blue_background.png',
                  ),
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TopBar(
                        text: "",
                        leftIcon: const Icon(
                          Icons.share_outlined,
                          size: 25,
                          color: Color(0xff3D3D3D),
                        ),
                        rightIcon: const Icon(
                          Icons.chevron_right,
                          size: 35,
                          color: Color(0xff3D3D3D),
                        ),
                        onClick1: () {},
                        onClick2: () {}),
                    PatientReservationHeader(),
                    PatientReservationAddress(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

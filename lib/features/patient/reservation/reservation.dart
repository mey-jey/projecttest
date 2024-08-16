import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme.dart';
import '../../../widgets/comments_header.dart';
import '../../../widgets/patient_reservation_address.dart';
import '../../../widgets/patient_reservation_header.dart';
import '../../../widgets/patient_reservation_price.dart';

class Reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image(
              image: AssetImage(
                'assets/images/blue_background.png',
              ),
              width: double.infinity,
              // height: 320,
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                  CommentsHeader(),

                ],
              ),
            ),
            Positioned(
              bottom: 0, // Positioned at the bottom
              left: 0,
              right: 0,
              child: PatientReservationPrice(buttonText: 'گرفتن نوبت مشاوره',priceText: '550,000',onClick1: (){},),
            ),
            // PatientReservationPrice(),
          ],
        ),
      ),
    );
  }
}

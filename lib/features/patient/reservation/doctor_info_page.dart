import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:flutter/material.dart';

import 'widgets/base_card.dart';
import 'widgets/doctor_profile.dart';
import 'widgets/payment_info.dart';
import 'widgets/reservation_info.dart';
import 'widgets/sticky_footer.dart';


class DoctorInfoPage extends StatelessWidget {
  const DoctorInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseCard(child: PatientReservationStepper(0)),
                  const DoctorProfile(),
                  const SizedBox(height: 8),
                  const ReservationInfo(),
                  const SizedBox(height: 8),
                  const PaymentInfo(),
                ],
              ),
            ),
          ),
          const StickyFooter(),
        ],
      ),
    );
  }
}

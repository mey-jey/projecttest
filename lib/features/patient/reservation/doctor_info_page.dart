import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/base_card.dart';
import 'widgets/doctor_profile.dart';
import 'widgets/payment_info.dart';
import 'reservation_info/ui/reservation_info.dart';
import 'widgets/sticky_footer.dart';


class DoctorInfoPage extends StatelessWidget {
  var doctorId;
  var doctorName;

  DoctorInfoPage(this.doctorId, this.doctorName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Container(
                          color: Colors.white,
                          child: TopBar(
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
                        ),
                      ),
                      BaseCard(child: StepIndicator(currentStep: 3,),),
                      DoctorProfile(doctorName),
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
        ),
      ),
    );
  }
}

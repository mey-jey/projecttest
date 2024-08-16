import 'package:doctor_app/widgets/show_on_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/colors.dart';

class PatientReservationAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 360,
          height: 192,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'آدرس',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF0D111B),
                            fontSize: 16,
                            fontFamily: 'Peyda',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    SvgPicture.asset("assets/svgs/location.svg",
                        // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                        width: 25, height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'مشهد، وکیل‌آباد 17، معاد 8، ساختمان سینا',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF2B303A),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ShowOnMap(),
            ],
          ),
        ),
      ],
    );
  }
}
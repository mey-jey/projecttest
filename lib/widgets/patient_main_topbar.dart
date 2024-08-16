import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PatientMainTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  child: Text(
                    'دیپ‌سنس',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF0D111B),
                      fontSize: 16,
                      fontFamily: 'Peyda',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 24,
                height: 24,

                child: Image.asset('assets/images/logo.png' )
    ),
            ],
          ),
        ),
      ],
    );
  }
}

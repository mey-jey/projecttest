import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:flutter/material.dart';

class StickyFooter extends StatelessWidget {
  const StickyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(
                color: Color(0xE1E1E1FF)
            )
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x190D111B),
            blurRadius: 32,
            offset: Offset(0, 12),
            spreadRadius: -12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                '150,000',
                style: TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF0D111B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Text(
                'تومان',
                style: TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF707684),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          RectBlueButton(
            onPressed: () {
              // Handle payment
            },
            label: "پرداخت بیعانه",
            isEnabled: true,
          ),
        ],
      ),
    );
  }
}
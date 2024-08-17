import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  final String label;
  final String amount;

  const PaymentRow({super.key, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'تومان',
              style: TextStyle( fontFamily: 'Peyda',
                color: Color(0xFF707684),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              amount,
              style: const TextStyle( fontFamily: 'Peyda',
                color: Color(0xFF2B303A),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          label,
          style: const TextStyle( fontFamily: 'Peyda',
            color: Color(0xFF707684),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

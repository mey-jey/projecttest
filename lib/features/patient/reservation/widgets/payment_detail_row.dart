import 'package:flutter/material.dart';

class PaymentDetailRow extends StatelessWidget {
  final String label;
  final String amount;
  final bool highlight;

  const PaymentDetailRow({
    required this.label,
    required this.amount,
    this.highlight = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle( fontFamily: 'Peyda',
            color: highlight ? const Color(0xFF2B303A) : const Color(0xFF707684),
            fontSize: 14,
            fontWeight: highlight ? FontWeight.bold : FontWeight.w400,
          ),
        ),
        Row(
          children: [
            Text(
              amount,
              style: TextStyle( fontFamily: 'Peyda',
                color: highlight ? const Color(0xFF0D111B) : const Color(0xFF707684),
                fontSize: highlight ? 20 : 16,
                fontWeight: highlight ? FontWeight.bold : FontWeight.w400,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'تومان',
              style: TextStyle( fontFamily: 'Peyda',
                color: highlight ? const Color(0xFF2B303A) : const Color(0xFF707684),
                fontSize: 14,
                fontWeight: highlight ? FontWeight.w500 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

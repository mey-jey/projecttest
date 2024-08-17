import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final String title;
  final String description;

  const PaymentSummary({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF0FAFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.info_outline, color: Color(0xFF335BFF)), // Add icon before title
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF0D111B),
                  fontSize: 14,
                  fontWeight: FontWeight.bold, // Set to bold as per design
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              description,
              style: const TextStyle( fontFamily: 'Peyda',
                color: Color(0xFF2B303A),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

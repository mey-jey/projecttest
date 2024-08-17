import 'package:flutter/material.dart';

class ReservationDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const ReservationDetailRow({
    required this.label,
    required this.value,
    required this.icon, // Add icon as a parameter
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFF707684)), // Use the provided icon
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF707684),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF2B303A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
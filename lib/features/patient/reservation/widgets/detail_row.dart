import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final String? avatarUrl;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              value,
              style: const TextStyle( fontFamily: 'Peyda',
                color: Color(0xFF2B303A),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (avatarUrl != null)
              const SizedBox(width: 4),
            if (avatarUrl != null)
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(avatarUrl!),
                onBackgroundImageError: (error, stackTrace) {
                  // Handle image loading error
                },
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

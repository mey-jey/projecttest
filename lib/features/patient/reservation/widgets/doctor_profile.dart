import 'package:flutter/material.dart';

import 'base_card.dart';
import 'custom_divider.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F7F9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://via.placeholder.com/40x40"),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'علی فدوی',
                      style: TextStyle( fontFamily: 'Peyda',
                        color: Color(0xFF0D111B),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'کلیه و مجاری ادراری',
                      style: TextStyle( fontFamily: 'Peyda',
                        color: Color(0xFF707684),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CustomDivider(),
            Row(
              children: [
                Icon(Icons.verified, size: 20, color: Color(0xFF335BFF)),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'تمامی پزشکان توسط دیپ‌سنس، بررسی و تایید شده‌اند.',
                    style: TextStyle( fontFamily: 'Peyda',
                      color: Color(0xFF2B303A),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

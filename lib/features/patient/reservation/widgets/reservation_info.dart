import 'package:flutter/material.dart';
import 'base_card.dart';
import 'custom_divider.dart';
import 'icon_text_row.dart';
import 'section_title.dart';

class ReservationInfo extends StatelessWidget {
  const ReservationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'جزئیات رزرو'),
          const SizedBox(height: 20),
          const IconTextRow(
            label: 'زمان',
            value: 'سه‌شنبه 17 خرداد 1403، ساعت 09:30 تا 10:00',
            icon: Icons.access_time,
          ),
          const CustomDivider(),
          const IconTextRow(
            label: 'آدرس',
            value: 'مشهد، وکیل‌آباد 17، معاد 8، ساختمان سینا',
            icon: Icons.location_on,
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0x3D999FAD), width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x070D111B),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Placeholder(
              color: Color(0xFFF0FAFF),
              fallbackWidth: double.infinity,
              fallbackHeight: 70,
              child: Center(
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Navigate to map
                  },
                  icon: Icon(Icons.navigation_rounded),
                  label: const Text(
                    'نمایش روی نقشه',
                    style: TextStyle(
                      fontFamily: 'Peyda',
                      color: Color(0xFF0D111B),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

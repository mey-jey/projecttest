import 'package:doctor_app/widgets/show_on_map.dart';
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
          ShowOnMap(),
        ],
      ),
    );
  }
}

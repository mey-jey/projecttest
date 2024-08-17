import 'package:flutter/material.dart';
import 'detail_card.dart';
import 'detail_row.dart';

class AppointmentDetails {
  final String doctorName;
  final String? doctorAvatarUrl;
  final String date;
  final String time;

  const AppointmentDetails({
    required this.doctorName,
    this.doctorAvatarUrl,
    required this.date,
    required this.time,
  });
}

class AppointmentDetailsCard extends StatelessWidget {
  final AppointmentDetails details;

  const AppointmentDetailsCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return DetailCard(
      children: [
        DetailRow(label: 'پزشک شما', value: details.doctorName, avatarUrl: details.doctorAvatarUrl),
        const SizedBox(height: 12),
        DetailRow(label: 'تاریخ', value: details.date),
        const SizedBox(height: 12),
        DetailRow(label: 'زمان', value: details.time),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'widgets/action_buttons.dart';
import 'widgets/appointment_details_card.dart';
import 'widgets/payment_details_card.dart';
import 'widgets/payment_status_page.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentStatusPage(
        status: PaymentStatus.success,
        message: 'رزرو با موفقیت ثبت شد',
        imagePath: 'assets/images/Illustration-Success.png',
        appointmentDetails: const AppointmentDetails(
          doctorName: 'علی فدوی',
          doctorAvatarUrl: 'https://via.placeholder.com/20x20',
          date: 'پنج‌شنبه، 17 خرداد 1403',
          time: 'ساعت 09:00 تا 10:00',
        ),
        paymentDetails: const PaymentDetails(
          deposit: '150,000',
          remaining: '400,000',
          transactionId: '16018519419173012',
          paymentDateTime: '1403/03/17، 09:41:08',
        ),
        actionButtons: ActionButtons.success(),  // Specify success buttons
      ),
    );
  }
}

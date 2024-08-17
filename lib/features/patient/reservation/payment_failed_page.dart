import 'package:flutter/material.dart';
import 'widgets/action_buttons_failure.dart';
import 'widgets/payment_details_card.dart';
import 'widgets/payment_status_page.dart';

class PaymentFailedPage extends StatelessWidget {
  const PaymentFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentStatusPage(
        status: PaymentStatus.failure,
        message: 'پرداختت به مشکل خورد',
        imagePath: 'assets/images/Illustration-Failed.png',
        appointmentDetails: null,  // No appointment details for failed payment
        paymentDetails: PaymentDetails(
          deposit: '150,000',
          remaining: '',
          transactionId: '16018519419173012',
          paymentDateTime: '1403/03/17، 09:41:08',
        ),
        actionButtons: ActionButtonsFailure(),  // Specify failure buttons
        additionalMessage: 'اگر مبغلی از حسابت کم شده، طی 72 ساعت به حسابت برمی‌گرده. برای ثبت رزرو، باید پرداخت بیعانه رو انجام بدی.',
      ),
    );
  }
}

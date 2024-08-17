import 'package:flutter/material.dart';
import 'payment_status_image.dart';
import 'appointment_details_card.dart';
import 'payment_details_card.dart';
import 'action_buttons.dart';

enum PaymentStatus { success, failure }

class PaymentStatusPage extends StatelessWidget {
  final PaymentStatus status;
  final String message;
  final String imagePath;
  final AppointmentDetails? appointmentDetails;
  final PaymentDetails paymentDetails;
  final String? additionalMessage;
  final Widget actionButtons;

  const PaymentStatusPage({
    super.key,
    required this.status,
    required this.message,
    required this.imagePath,
    this.appointmentDetails,
    required this.paymentDetails,
    this.additionalMessage,
    required this.actionButtons,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PaymentStatusImage(imagePath: imagePath),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle( fontFamily: 'Peyda',
                color: Color(0xFF0D111B),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (status == PaymentStatus.failure && additionalMessage != null) ...[
              const SizedBox(height: 8),
              Text(
                additionalMessage!,
                textAlign: TextAlign.center,
                style: const TextStyle( fontFamily: 'Peyda',
                  color: Color(0xFF2B303A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
            if (appointmentDetails != null) ...[
              const SizedBox(height: 20),
              AppointmentDetailsCard(details: appointmentDetails!),
            ],
            const SizedBox(height: 12),
            PaymentDetailsCard(details: paymentDetails),
            const SizedBox(height: 20),
            actionButtons,  // Use the specified action buttons
          ],
        ),
      ),
    );
  }
}

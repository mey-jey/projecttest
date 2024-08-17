import 'package:flutter/material.dart';
import 'detail_card.dart';
import 'detail_row.dart';
import 'payment_row.dart';

class PaymentDetails {
  final String deposit;
  final String remaining;
  final String transactionId;
  final String paymentDateTime;

  const PaymentDetails({
    required this.deposit,
    required this.remaining,
    required this.transactionId,
    required this.paymentDateTime,
  });
}

class PaymentDetailsCard extends StatelessWidget {
  final PaymentDetails details;

  const PaymentDetailsCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return DetailCard(
      children: [
        PaymentRow(label: 'مبلغ بیعانه (پرداخت‌شده)', amount: details.deposit),
        if (details.remaining.isNotEmpty) const SizedBox(height: 12),
        if (details.remaining.isNotEmpty)
          PaymentRow(label: 'باقی‌مانده (پرداخت در مطب)', amount: details.remaining),
        const SizedBox(height: 12),
        DetailRow(label: 'شماره پیگیری پرداخت', value: details.transactionId),
        const SizedBox(height: 12),
        DetailRow(label: 'تاریخ و زمان پرداخت', value: details.paymentDateTime),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'base_card.dart';
import 'custom_divider.dart';
import 'dash_border.dart';
import 'payment_detail_row.dart';
import 'payment_summary.dart';
import 'section_title.dart';


class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'خلاصه خرید'),
          SizedBox(height: 20),
          PaymentSummary(
            title: 'قوانین رزرو نوبت و پرداخت',
            description:
            'در صورت کنسل‌کردن نوبت، مبلغ بیعانه عودت داده نخواهد شد. اما تغییر زمان رزرو به سایر‌ زمان‌های خالی پزشک، بدون هزینه اضافی قابل انجام خواهد بود.',
          ),
          CustomDivider(),
          PaymentDetailRow(label: 'مبلغ بیعانه', amount: '150,000'),
          SizedBox(height: 4),
          PaymentDetailRow(label: 'باقی‌مانده (پرداخت در مطب)', amount: '400,000'),
          SizedBox(height: 20),
          DashedBorderContainer(
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          SizedBox(height: 20),
          PaymentDetailRow(label: 'قابل پرداخت', amount: '150,000', highlight: true),
        ],
      ),
    );
  }
}
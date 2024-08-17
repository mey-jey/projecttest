import 'package:flutter/material.dart';

class PaymentStatusImage extends StatelessWidget {
  final String imagePath;

  const PaymentStatusImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 96,
      height: 112,
    );
  }
}

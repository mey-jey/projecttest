import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle( fontFamily: 'Peyda',
        color: Color(0xFF0D111B),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

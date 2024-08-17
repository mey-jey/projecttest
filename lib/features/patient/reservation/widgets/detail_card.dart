import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final List<Widget> children;

  const DetailCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: const Color(0x3D999FAD)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x070D111B),
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RectBlueButton extends StatelessWidget {
  final String label;
  final bool isEnabled;
  final VoidCallback onPressed;

  const RectBlueButton({
    super.key,
    required this.label,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: isEnabled ? null : Color(0xFFF1F4F7),
          gradient: isEnabled
              ? LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF335BFF).withOpacity(0.9), Color(0xFF335BFF).withOpacity(1)],
          )
              : null,
          borderRadius: BorderRadius.circular(12),
          border: isEnabled
              ? Border.all(color: Color(0xFF335BFF), width: 1)
              : null,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isEnabled ? Colors.white : Color(0xFFC9CFD8),
              fontSize: 14,
              fontFamily: 'Peyda',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

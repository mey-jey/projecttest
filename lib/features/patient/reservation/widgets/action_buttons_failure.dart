import 'package:flutter/material.dart';

class ActionButtonsFailure extends StatelessWidget {
  const ActionButtonsFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildButton(
      text: 'تلاش مجدد',
      color: Colors.black,
      textColor: Colors.white,
      onPressed: () {
        // Handle retry payment
      },
    );
  }

  Widget _buildButton({
    required String text,
    required Color color,
    Color borderColor = Colors.transparent,
    required Color textColor,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
        boxShadow: const [
          BoxShadow(
            color: Color(0x070D111B),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle( fontFamily: 'Peyda',
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

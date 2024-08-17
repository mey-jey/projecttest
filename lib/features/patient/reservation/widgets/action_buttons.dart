import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onPrimaryActionPressed;
  final VoidCallback? onSecondaryActionPressed;

  const ActionButtons({
    super.key,
    required this.onPrimaryActionPressed,
    this.onSecondaryActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildButton(
          text: 'بازگشت به خانه',
          color: const Color(0xFF335BFF),
          textColor: Colors.white,
          onPressed: onPrimaryActionPressed,
        ),
        if (onSecondaryActionPressed != null) ...[
          const SizedBox(height: 12),
          _buildButton(
            text: 'نمایش موقعیت مطب',
            color: Colors.white,
            borderColor: const Color(0x3D999FAD),
            textColor: const Color(0xFF0D111B),
            onPressed: onSecondaryActionPressed!,
          ),
        ],
      ],
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
        boxShadow: color == Colors.white
            ? const [
          BoxShadow(
            color: Color(0x070D111B),
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ]
            : null,
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

  static ActionButtons success() {
    return ActionButtons(
      onPrimaryActionPressed: () {
        // Handle back to home
      },
      onSecondaryActionPressed: () {
        // Handle showing location
      },
    );
  }
}

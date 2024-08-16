import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String text = 'همه نظرات (24)';
  Color backgroundColor;
  Color inactiveBackgroundColor;
  IconData? icon = null;
  Color textColor;
  Color inactiveTextColor;
  Color? iconColor;
  Color borderColor;

  bool isActive;
  VoidCallback? onPressed;

  RoundedButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    this.borderColor = Colors.transparent,
    required this.inactiveBackgroundColor,
    this.icon,
    required this.textColor,
    required this.inactiveTextColor,
    this.iconColor = Colors.white,
    this.isActive = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(

        style: ElevatedButton.styleFrom(
          minimumSize:const Size(double.infinity, 40),
          backgroundColor: isActive ? backgroundColor : inactiveBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(
              width: 1.0,
              color: borderColor,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),

        ),
        onPressed: isActive ? onPressed : null, // Disable button if not active
        icon: icon == null
            ? SizedBox()
            : Icon(
                icon,
                color: iconColor, // Icon color remains the same
              ),
        label: Text(
          text,
          style: TextStyle(
            color: isActive ? textColor : inactiveTextColor,
            // Text color changes based on state
            fontSize: 14,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

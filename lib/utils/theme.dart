import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF6200EE);
  static const Color primaryColorDark = Color(0xFF3700B3);
  static const Color primaryColorLight = Color(0xFFBB86FC);
  static const Color accentColor = Color(0xFF03DAC6);

  static const Color backgroundColor = Color(0xFFF2F5F8);
  static const Color backgroundInverseColor = Color(0xFF0E121B);

  static const Color textColor = Color(0xFF000000);
  static const Color buttonColor = Color(0xFF6200EE);

  static const Color foregroundSoftColor = Color(0xFF717784);
  static const Color foregroundWeakColor = Color(0xFF717784);
  static const Color foregroundStrongColor = Color(0xFF0E121B);

  static const Color dividerBaseColor = Color.fromRGBO(153, 160, 173, 0.24);

  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: textColor,
  );
}

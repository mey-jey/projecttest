import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const BaseCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(16), // Default padding to 16
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,  // White background
        // No borderRadius as per your requirement
      ),
      child: child,
    );
  }
}

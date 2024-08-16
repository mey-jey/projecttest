import 'package:doctor_app/features/login/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:doctor_app/utils/theme.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(radius: 40, backgroundColor: Colors.grey),
          Positioned(
              bottom: 0,
              right: -25,
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: AppTheme.backgroundInverseColor,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}

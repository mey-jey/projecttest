import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme.dart';

class Reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(
              image: AssetImage(
                'assets/images/blue_background.png',
              ),
              width: double.infinity,
              height: 160,
            ),
            Column(
              children: [
                TopBar(
                    text: "",
                    leftIcon: const Icon(
                      Icons.share_outlined,
                      size: 18,
                      color: Color(0xff3D3D3D),
                    ),
                    rightIcon: const Icon(
                      Icons.chevron_right,
                      size: 18,
                      color: Color(0xff3D3D3D),
                    ),
                    onClick1: () {},
                    onClick2: () {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

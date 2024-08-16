import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/colors.dart';

Stack ShowOnMap() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
  decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1, color: Color(0x3D999FAD)),
          borderRadius: BorderRadius.circular(10),
        ),),
        child: SvgPicture.asset("assets/svgs/map.svg",
            colorFilter: const ColorFilter.mode(DSColors.backgroundColor, BlendMode.srcIn),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 60),
      ),
      Center(
        child: Container(
          width: 151,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1, color: Color(0x3D999FAD)),
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x070D111B),
                blurRadius: 2,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'نمایش روی نقشه',
                style: TextStyle(
                  color: Color(0xFF0D111B),
                  fontSize: 12,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 5),
              SvgPicture.asset("assets/svgs/on_map.svg",
                  // colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                  width: 14,
                  height: 14),
            ],
          ),
        ),
      ),
    ],
  );
}

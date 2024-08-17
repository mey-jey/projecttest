import 'package:doctor_app/widgets/show_on_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/colors.dart';

class PatientMainAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 480,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/arrow_left.svg",
                      width: 15,
                      height: 15,
                      colorFilter: const ColorFilter.mode(
                          Color(0xFF335BFF), BlendMode.srcIn),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '  مشاهده همه  ',
                      style: TextStyle(
                        color: Color(0xFF335BFF),
                        fontSize: 14,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'نوبت‌های من',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF0D111B),
                        fontSize: 14,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 408,
                padding: const EdgeInsets.all(4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0x3D999FAD)),
                    borderRadius: BorderRadius.circular(12),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F7F9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'علی فدوی',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF0D111B),
                                      fontSize: 14,
                                      fontFamily: 'Peyda',
                                      fontWeight: FontWeight.w500,
                                      // height: 0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'کلیه و مجاری ادراری',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF707684),
                                      fontSize: 12,
                                      fontFamily: 'Peyda',
                                      fontWeight: FontWeight.w500,
                                      // height: 0.11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/avatar_image.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1024),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 90,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      'پنج‌شنبه، 17 خرداد 1403',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF2B303A),
                                        fontSize: 12,
                                        fontFamily: 'Peyda',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 1.33),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: SvgPicture.asset(
                                      "assets/svgs/calendar.svg",
                                      colorFilter: const ColorFilter.mode(
                                          DSColors.iconGrey, BlendMode.srcIn),
                                      width: 25,
                                      height: 25),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "10:30 " + " - " + "11:00",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF2B303A),
                                        fontSize: 12,
                                        fontFamily: 'Peyda',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 1.33),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: SvgPicture.asset(
                                      "assets/svgs/clock.svg",
                                      colorFilter: const ColorFilter.mode(
                                          DSColors.iconGrey, BlendMode.srcIn),
                                      width: 25,
                                      height: 25),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      'مشهد، وکیل‌آباد 17، معاد 8، ساختمان سینا',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF2B303A),
                                        fontSize: 12,
                                        fontFamily: 'Peyda',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 1.33),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: SvgPicture.asset(
                                      "assets/svgs/location.svg",
                                      colorFilter: const ColorFilter.mode(
                                          DSColors.iconGrey, BlendMode.srcIn),
                                      width: 25,
                                      height: 25),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    ShowOnMap(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

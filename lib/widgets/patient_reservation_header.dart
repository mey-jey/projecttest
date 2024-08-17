import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

import '../core/utils/colors.dart';

class PatientReservationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 240,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svgs/blue_tik.svg",
                                    width: 25,
                                    height: 25),
                                const SizedBox(width: 6),
                                Text(
                                  'علی فدوی',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0D111B),
                                    fontSize: 20,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '(#196382)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
                                    fontSize: 12,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'کلیه و مجاری ادراری',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF2B303A),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 64,
                      height: 64,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Image(
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                        image:
                        AssetImage('assets/images/avatar_image.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  child:
                  ReadMoreText(
                    'پاسخگوی شما در زمینه ی بیماریهای داخلی، خونی، دیابت، فشار خون، تیرویید، گوارش، کبد، روماتولوژی  ',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: Colors.blue,
                    trimCollapsedText: 'مشاهده بیشتر',
                    trimExpandedText: 'مشاهده کمتر',
                    textAlign: TextAlign.right,
                    moreStyle: TextStyle(
                      color: Color(0xFF2B303A),
                      fontSize: 14,
                      fontFamily: 'Peyda',
                      fontWeight: FontWeight.w400,
                    ),
                    style: TextStyle(
                      color: Color(0xFF707684),
                      fontSize: 14,
                      fontFamily: 'Peyda',
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/svgs/star.svg",
                                    // colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                                    width: 25,
                                    height: 25),
                                    const SizedBox(width: 4),
                                    Text(
                                      '4.6',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF0D111B),
                                        fontSize: 16,
                                        fontFamily: 'Peyda',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'از 76 رای',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      VerticalDivider(
                        color: Color(0xFF707684),
                        endIndent: 0,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '93',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0D111B),
                                  fontSize: 16,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'مراجع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      VerticalDivider(
                        color: Color(0xFF707684),
                        endIndent: 0,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '129',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0D111B),
                                  fontSize: 16,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'جلسه مشاوره',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
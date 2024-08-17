import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientMainBottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: 360,
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'تخصص‌های پرجستجو',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF0D111B),
                  fontSize: 16,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_job.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'شغلی و تحصیلی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'استعدادیابی، روابط موثر، خلاقیت',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_depression.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'افسردگی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'وسواس، کنترل خشم و هیجان، ترس و تنهایی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_marriage.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'ازدواج',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'انتخاب همسر، شکست عاطفی، خیانت',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
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
              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_other.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'سایر',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'سایر اختلالات و مشکلات عمومی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_sexual.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'جنسی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'اختلالات، ناتوانی، اعتماد به نفس، تمایلات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/home_rehabilitation.svg",
                                // colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                                width: 40,
                                height: 40),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'توان‌بخشی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF2B303A),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'مواجهه با بیماری‌های سخت و صعب‌العلاج',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 10,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
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
          ),
        ),
      ],
    );
  }
}

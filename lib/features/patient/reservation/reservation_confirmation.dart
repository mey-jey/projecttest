import 'package:flutter/material.dart';
class ReservationConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 708,
          padding: const EdgeInsets.all(20),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 96,
                height: 112,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 96,
                        height: 96,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Colors.white.withOpacity(0), Colors.white],
                          ),
                          shape: OvalBorder(
                            side: BorderSide(width: 1, color: Color(0xFF1FC06A)),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x190D111B),
                              blurRadius: 32,
                              offset: Offset(0, 12),
                              spreadRadius: -12,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16.71,
                      top: 38.65,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.21),
                        child: Container(
                          width: 56,
                          height: 76,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0x3D999FAD)),
                              borderRadius: BorderRadius.circular(4),
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
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.79,
                      top: 34.59,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.09),
                        child: Container(
                          width: 56,
                          height: 76,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0x3D999FAD)),
                              borderRadius: BorderRadius.circular(4),
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
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25.34,
                      top: 31.05,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.03),
                        child: Container(
                          width: 56,
                          height: 76,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0x3D999FAD)),
                              borderRadius: BorderRadius.circular(4),
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
                          child: Stack(
                            children: [
                              Positioned(
                                left: 6,
                                top: 6,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1024),
                                    ),
                                  ),
                                  child: FlutterLogo(),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 20,
                                child: Container(
                                  width: 44,
                                  height: 12,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 36,
                                child: Container(
                                  width: 32,
                                  height: 6,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 46,
                                child: Container(
                                  width: 16,
                                  height: 3,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 52,
                                child: Container(
                                  width: 16,
                                  height: 3,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 58,
                                child: Container(
                                  width: 16,
                                  height: 3,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 64,
                                child: Container(
                                  width: 16,
                                  height: 3,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3D999FAD),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 0,
                                child: Container(
                                  width: 44,
                                  height: 76,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(1.00, -0.00),
                                      end: Alignment(-1, 0),
                                      colors: [Colors.white, Colors.white.withOpacity(0.009999999776482582)],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -8,
                                top: 12,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1FC06A),
                                            shape: StarBorder(
                                              points: 10,
                                              innerRadiusRatio: 0.80,
                                              pointRounding: 1,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 3,
                                        top: 3,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.00, -1.00),
                                              end: Alignment(0, 1),
                                              colors: [Colors.white, Colors.white.withOpacity(0)],
                                            ),
                                            shape: OvalBorder(side: BorderSide(width: 0.50)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16.56,
                                top: 64.67,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.26),
                                  child: Text(
                                    'CONFIRMED',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF1FC06A),
                                      fontSize: 10,
                                      fontFamily: 'Bebas Neue',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 24,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'رزرو با موفقیت ثبت شد',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0D111B),
                          fontSize: 16,
                          fontFamily: 'Peyda',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 276,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 116,
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x3D999FAD)),
                          borderRadius: BorderRadius.circular(16),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'علی فدوی',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF2B303A),
                                          fontSize: 14,
                                          fontFamily: 'Peyda',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 2,
                                              strokeAlign: BorderSide.strokeAlignOutside,
                                              color: Colors.white,
                                            ),
                                            borderRadius: BorderRadius.circular(1024),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(1024),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage("https://via.placeholder.com/20x20"),
                                                        fit: BoxFit.fill,
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
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'پزشک شما',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'پنج‌شنبه، 17 خرداد 1403',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF2B303A),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'تاریخ ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'ساعت 09:00 تا 10:00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF2B303A),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'زمان',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 148,
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x3D999FAD)),
                          borderRadius: BorderRadius.circular(16),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Text(
                                        'تومان',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF707684),
                                          fontSize: 14,
                                          fontFamily: 'Peyda',
                                          fontWeight: FontWeight.w400,
                                          height: 0.10,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '150,000',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF2B303A),
                                          fontSize: 14,
                                          fontFamily: 'Peyda',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'مبلغ بیعانه (پرداخت‌شده)',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Text(
                                        'تومان',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF707684),
                                          fontSize: 14,
                                          fontFamily: 'Peyda',
                                          fontWeight: FontWeight.w400,
                                          height: 0.10,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '400,000',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF2B303A),
                                          fontSize: 14,
                                          fontFamily: 'Peyda',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'باقی‌مانده (پرداخت در مطب)',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '16018519419173012',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF2B303A),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'شماره پیگیری پرداخت',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1403/03/17، 09:41:08',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF2B303A),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 163),
                                Text(
                                  'تاریخ و زمان پرداخت',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF707684),
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 92,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Colors.white.withOpacity(0.11999999731779099), Colors.white.withOpacity(0)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF335BFF)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'بازگشت به خانه',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Peyda',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'نمایش موقعیت مطب',
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
                        ],
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

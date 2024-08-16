import 'package:flutter/material.dart';

class PatientReservationPrice extends StatelessWidget {
  String buttonText = 'گرفتن نوبت مشاوره';
  void Function() onClick1 = () {};
  String priceText = '550,000';

  PatientReservationPrice(
      {required this.buttonText,
      required this.onClick1,
      required this.priceText,
      super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 64,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF335BFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: onClick1,
                  child: Container(
                    height: 28,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تومان',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF707684),
                            fontSize: 12,
                            fontFamily: 'Peyda',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          priceText,
                          textAlign: TextAlign.right,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

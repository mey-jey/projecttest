import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  void Function()? onClick1;
  void Function()? onClick2;
  String text;
  Widget? rightIcon;
  Widget? leftIcon;

  TopBar(
      {required this.text,
      this.rightIcon,
      this.leftIcon,
      required this.onClick1,
      required this.onClick2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 56,
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child:GestureDetector(
                  child: leftIcon ?? SizedBox(),
                  onTap:onClick1??(){} ,
                )
              ),
              Expanded(
                flex: 10,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0D111B),
                    fontSize: 16,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                  child:GestureDetector(
                    child: rightIcon ?? SizedBox(),
                    onTap:onClick2??(){} ,
                  )


              ),

            ],
          ),
        ),
      ],
    );
  }
}

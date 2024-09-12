



import 'package:doctor_app/core/utils/colors.dart';
import 'package:doctor_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TemplateImage extends StatelessWidget {
  String imageSvg;
  double width;
  double height;
    TemplateImage({super.key,required this.width,required this.height,
  required this.imageSvg});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: width,
      width: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 2,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),

              Container(
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),

                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 2,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              Container(
                width: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),

                width: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      DSColors.textColor.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: DSColors.iconGreyTwo,
                borderRadius: BorderRadius.circular(300)
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: DSColors.white,
                border: Border.all(color: DSColors.textGrey.withOpacity(0.4),width:
                3),
                borderRadius: BorderRadius.circular(300)
            ),
          ),
          SvgPicture.asset(imageSvg,height: 50,color:
          DSColors.textGrey,),
        ],
      ),
    );
  }
}

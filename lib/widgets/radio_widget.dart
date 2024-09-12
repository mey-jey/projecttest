
import 'package:doctor_app/core/utils/colors.dart';
import 'package:doctor_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final String? title;
  final String? subtitle;
  String? value = '';
  bool? isSelected = false;
  final void Function(String)? onChange;

  CustomRadio({Key? key, this.title,this.value, this.isSelected, this.subtitle,this
      .onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange!(value??'');
      },
       hoverColor: DSColors.textGrey,
       focusColor: DSColors.textGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            padding:const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: isSelected! ? DSColors.darkBlue :Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color:isSelected! ? DSColors.darkBlue : DSColors.textGrey.withOpacity(0.4), width: 2)),
            child:  Visibility(
              visible: isSelected??false,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(100),
                )   ),
            ),
          ),
          const SizedBox(width: 10,),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(title,padding: 0,),
              const SizedBox(height: 10,),
              CustomText(
                subtitle,
                padding: 0,
                color: DSColors.textColor.withOpacity(0.4),
                size: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}

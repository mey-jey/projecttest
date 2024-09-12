import 'package:doctor_app/core/utils/colors.dart';
import 'package:doctor_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final String? title;
  final String? subtitle;
  bool? isCheck = false;
  final void Function(bool)? onChange;

  CustomCheckBox(
      {Key? key, this.title, this.subtitle, this.onChange, this.isCheck})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange!(!(isCheck ?? false));
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

            decoration: BoxDecoration(
                color: isCheck! ? DSColors.darkBlue : Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: isCheck!
                        ? DSColors.darkBlue
                        : DSColors.textGrey.withOpacity(0.4),
                    width: 2)),
            child: Center(
              child: Visibility(
                visible: isCheck ?? false,
                child: const Icon(
                  Icons.check_rounded,
                  color: Colors.white,

                  size: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                title,
                padding: 0,
              ),
              const SizedBox(
                height: 10,
              ),
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

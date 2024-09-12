import 'package:doctor_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomText extends Text {
  final String? text;
  final Color? color;
  final double? size;
  final Widget? startWidget;
  final Widget? endWidget;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final TextOverflow? overflow;
  final int? characterCount;
  final int? maxLines;
  final bool? isMatchParent;
  final double? padding;
  final VoidCallback? onTap;
  final TextStyle? style;

  const CustomText(
    this.text, {
    Key? key,
    this.color,
    this.size,
    this.fontWeight,
    this.textAlign = TextAlign.start,
    this.characterCount,
    this.maxLines,
    this.padding = 2,
    this.startWidget,
    this.endWidget,
    this.onTap,
    this.letterSpacing,
    this.height,
    this.overflow,
    this.style,
    this.isMatchParent = false,
  }) : super('');

  @override
  Widget build(BuildContext context) {

    var fontSize = 16.0;

    var textStyle =  TextStyle(height: 1.1, color: color ?? DSColors.textColor,
        fontSize: size??fontSize,
        letterSpacing: letterSpacing, overflow: overflow,fontFamily: "Peyda");




    if (style != null) {
      textStyle = style!.copyWith(
        height: style?.height ?? (height ?? 1.1),
        overflow: overflow,
        letterSpacing: letterSpacing,
        color: style?.color ?? (color ?? DSColors.textColor),
        fontSize: style?.fontSize ?? (size ?? fontSize),
        fontWeight: style?.fontWeight ?? (fontWeight ?? FontWeight.normal),
      );
    }
    return Padding(
      padding: padding == null ? EdgeInsets.all(padding!) : EdgeInsets.all(padding!),
      child: Material(
          color: Colors.transparent,
          child: SizedBox(
            width: isMatchParent! ? double.infinity : null,
            child: buildText(textStyle),


          )),
    );
  }

  Text buildText(TextStyle textStyle) {
    return Text(
      maxLines: maxLines,

      characterCount == null
          ? text!.tr
          : text!.tr.substring(0, text!.tr.length < characterCount! ? text!.tr.length : characterCount) +
              (text!.tr.length < characterCount! ? "" : "..."),
      textAlign: textAlign,
      style: textStyle,
    );
  }
}

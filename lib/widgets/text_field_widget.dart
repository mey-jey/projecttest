import 'dart:ui';
import 'package:doctor_app/config/debouncer.dart';
import 'package:doctor_app/config/text_styles.dart';
import 'package:doctor_app/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class CustomTextField extends StatelessWidget {
  ValueNotifier<TextDirection> textDir = ValueNotifier(TextDirection.ltr);
  final String? hint;
  final String? lable;
  final Widget? title;
  final String? initVal;
  final Function(String)? onChange;
  final Color? backgroundColor;
  final Color? textColor;
  final double fontSize;
  final TextAlign? textAlign;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool? isValid;
  final double? borderRadius;
  final double? heightText;
  final bool? withInputFormatters;

  final Widget? suffixIcon;
  final double? elevation;
  final Widget? prefixIcon;
  final EdgeInsets? outSidePadding;
  final TextEditingController? textEditingController;
  final bool? isBold;
  final bool? isObscureText;
  final Color? hintColor;
  Color? focusBorderColor;
  Color? unFocusBorderColor;
  double? focusBorderWidth;
  double? unFocusBorderWidth;
  final bool? isReadOnly;
  final bool? isCounter;
  final FocusNode? focusNode;
  final int? maxLine;
  final int? maxLength;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final GestureTapCallback? onTap;
  final bool? enableBorder;
  final bool? autoFocus;
  final bool? enable;
  final TextInputAction? textInputAction;
  final double? cursorWidth;
  final TextStyle? hintStyle;

   final TextDirection? textDirection;

  // final ValueChanged<bool>? onFocusChange;
  var debouncer = CustomDebouncer();

  final errorText;

  CustomTextField(
      {Key? key,
      this.hint = '',
      this.onChange,
      this.title,
      this.initVal = '',
      this.backgroundColor = Colors.transparent,
      this.textColor,
      this.fontSize = 14,
      this.textAlign,
      this.height,
      this.heightText,
      this.width,
      this.padding,
      this.margin,
      this.focusNode,
      this.onFieldSubmitted,
      this.lable = '',
      this.isValid,
      this.hintStyle,
      this.borderRadius = 12,
      this.withInputFormatters,
      this.suffixIcon,
      this.elevation,
      this.prefixIcon,
      this.outSidePadding,
      this.textEditingController,
      this.hintColor = DSColors.textFieldHintColor,
      this.focusBorderColor,
      this.unFocusBorderColor = Colors.transparent,
      this.focusBorderWidth = 1,
      this.unFocusBorderWidth = 0,
      this.isBold = false,
      this.isObscureText = false,
      this.maxLine = 1,
      this.maxLength = 500,
      this.enableBorder = true,
      this.errorText = 'please fill the box',
      this.inputFormatters,
      this.validator,
      this.onTap,
      this.isReadOnly,
      // this.onFocusChange,
      this.isCounter = false,
      this.autoFocus = false,
      this.enable = true,
       this.textDirection = TextDirection.rtl,
      this.textInputAction = TextInputAction.done,
      this.cursorWidth,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (textEditingController != null && textEditingController!.text.isNotEmpty) {
      // final dir = getDirection(textEditingController!.text);
      // textDir.value = dir;
      textEditingController?.selection = TextSelection.collapsed(offset: textEditingController!.text.length);
    }
    focusBorderColor = focusBorderColor ?? DSColors.textFieldBorderColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null ? title! : const SizedBox(),
        Container(
          height: height,
          width: width ?? double.infinity,
          margin: margin ?? const EdgeInsets.all(0),
          child: ValueListenableBuilder<TextDirection>(
            valueListenable: textDir,
            builder: (context, value, child) {
              return TextFormField(
                key: Key(initVal ?? ''),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },

                onFieldSubmitted: onFieldSubmitted,
                focusNode: focusNode,
                autofocus: autoFocus!,
                enableSuggestions: false,
                initialValue: textEditingController == null ? initVal ?? "" : null,
                 textDirection: textDirection,
                textInputAction: textInputAction,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorWidth: cursorWidth ?? 2,
                cursorHeight: 20,


                showCursor: true,

                autocorrect: false,
                onTap: onTap,

                // onTap: (){
                // if (textEditingController!=null&& textEditingController!.text.isNotEmpty) {
                //   textEditingController?.selection = TextSelection.collapsed(offset: textEditingController!.text.length);
                // }

                // },


                // validator: validator,
                enabled: enable,

                readOnly: isReadOnly ?? false,
                maxLength: maxLength,
                obscureText: isObscureText!,
                cursorColor: focusBorderColor ?? DSColors.focusBorderColor,
                controller: textEditingController,
                inputFormatters: inputFormatters ?? [],
                // [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9]+"))],

                // : [
                //
                // LengthLimitingTextInputFormatter(2),
                //   ],

                onChanged: (input) {
                  debouncer.run(() {
                    onChange?.call(input);
                  });
                  // if (input.trim().length < 2) {
                  //   final dir = getDirection(input);
                  //   if (dir != value) textDir.value = dir;
                  // }
                  // onChange?.call(input);
                },
                keyboardType: textInputType ?? TextInputType.text,
                textAlign: textAlign ?? TextAlign.start,
                // maxLines: maxLine ?? 1,
                //   minLines: 1,//Normal textInputField will be displayed
                maxLines: maxLine,

                style: TextStyle(
                  height: heightText ?? 0.5,

                  color: textColor ?? DSColors.textColor,
                  fontSize: fontSize,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  isDense: false,
                  fillColor: backgroundColor,
                  filled: true,
                  // dont forget this line
                  contentPadding: padding ?? const EdgeInsets.symmetric
                    (horizontal: 5, vertical: 15),
                  suffixIconConstraints: const BoxConstraints.expand(width: 40,),
                  focusedBorder: enableBorder!
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(borderRadius!),
                          borderSide: BorderSide(width: focusBorderWidth!, color: focusBorderColor!))
                      : InputBorder.none,
                  disabledBorder: enableBorder!
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(borderRadius!),
                          borderSide: BorderSide(width: focusBorderWidth!, color: focusBorderColor!))
                      : InputBorder.none,
                  enabledBorder: enableBorder!
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(borderRadius!),
                          borderSide: BorderSide(color: unFocusBorderColor ?? focusBorderColor!))
                      : InputBorder.none,
                  border: enableBorder!
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(borderRadius!),
                          borderSide: BorderSide(width: unFocusBorderWidth!, color: focusBorderColor!))
                      : InputBorder.none,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,

                  labelText: lable?.tr,
                  alignLabelWithHint: true,
                  labelStyle: hintStyle ?? CustomTextStyles.textStyleTextFieldHint,
                  hintText: hint?.tr ?? '',
                  hintStyle: hintStyle ?? CustomTextStyles.textStyleTextFieldHint,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

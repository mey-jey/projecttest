import 'dart:ffi';
import 'package:flutter/material.dart';
import 'colors.dart';

String selectedFontFamily = 'vazirmatn';

void setFontFamilyBaseOnLanguage() {
  // if (Strings.localeList.values.toList()[0] == const Locale("ar", "AR")) {
  //   selectedFontFamily = 'vazirmatn';
  // } else if (Strings.localeList.values.toList()[0] == const Locale("fa", "FA")) {
  //   selectedFontFamily = 'vazirmatn';
  // } else {
  //   selectedFontFamily = 'vazirmatn';
  // }
}
TextStyle getTextStyleBaseFontSize(double fontSize ,{Color fontColor=DSColors.textWhite,FontWeight fontWeight= FontWeight.normal}){
  return TextStyle(fontSize: fontSize, color: fontColor, fontFamily:selectedFontFamily);
}
// TextStyle textStyle16 = TextStyle(fontSize: 16, color: MrzColors.textWhite, fontFamily:selectedFontFamily);
// TextStyle textStyle18 = TextStyle(fontSize: 18, color: MrzColors.textWhite, fontFamily: selectedFontFamily);
//TextStyle textStyle20 = TextStyle(fontSize: 20, fontFamily: selectedFontFamily, color: MrzColors.white, fontWeight: FontWeight.bold,);

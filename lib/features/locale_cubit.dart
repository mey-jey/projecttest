import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LocaleCubit extends Cubit<Locale> {
  Locale _currentLocale;

  set currentLocale(Locale value) {
    _currentLocale = value;
    emit(_currentLocale);
  }

  Locale get currentLocale  {
    // _currentLocale = currentLocaleString == null ? const Locale("en", "EN") : Locale(currentLocaleString);
    return  _currentLocale;
  }

  LocaleCubit(this._currentLocale) : super(_currentLocale);

  // void setLocale( int indexLocale) {
  //   _currentLocale=Strings.localeStr[indexLocale]??const Locale("en", "EN");
  //   // hiveDatabase.setSelectLanguageToTableSetting(locale);
  //   emit(_currentLocale);
  // }
  //
  // void getLocale( String? currentLocaleString) {
  //   // String? currentLocaleString = hiveDatabase.getSettingTableRecord();
  //   _currentLocale = currentLocaleString == null ? const Locale("en", "EN") : Locale(currentLocaleString);
  //   emit(_currentLocale);
  //
  // }
}

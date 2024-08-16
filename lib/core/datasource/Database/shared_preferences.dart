import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocale {
   late final SharedPreferences prefs;

   Future<String> instanceSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    final String? selectedLocale = prefs.getString('selectedLocale');

    return selectedLocale??"en";
  }

   Future setSelectLanguageToTableSetting(String selectedLocale) async {
    // settingTable.put('selectedLocale', selectedLocale);
    await prefs.setString('selectedLocale', selectedLocale);
  }

  String? getSettingTableRecord() {
    final String? selectedLocale = prefs.getString('selectedLocale');
    return selectedLocale??"en";
  }
}

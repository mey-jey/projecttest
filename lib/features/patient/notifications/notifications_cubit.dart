import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/datasource/Database/shared_preferences.dart';
import '../../locale_cubit.dart';
import 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  LocaleCubit  localeCubit;

  NotificationsCubit(this.localeCubit) : super(InitialState(""));

  static NotificationsCubit get(context) => BlocProvider.of(context);

  SharedPreferencesLocale sharedPreferencesLocale = SharedPreferencesLocale();

  Future<void> openEmail() async {
    try {
      // sharedPreferencesLocale.setSelectLanguageToTableSetting(Strings.localeStr[statesIndex]!);
      // BlocProvider.of<LocaleCubit>(context).currentLocale =
      //     Strings.localeList[statesIndex] ?? const Locale("en", "EN");
      // await Clipboard.setData( ClipboardData(text: Strings.madheefEmail));
      // OpenLinks.openEmail(Strings.madheefEmail);
      // emit(ChangeLanguageState(statesIndex));
    } catch (e) {}
  }

  Future<void> openPhone() async {
    // await Clipboard.setData( ClipboardData(text: Strings.madheefPhoneNumber));
    // OpenLinks.openPhone(Strings.madheefPhoneNumber);
  }

  Future<void> openWhatsApp() async {
    // await Clipboard.setData( ClipboardData(text: Strings.madheefPhoneNumber));
    // OpenLinks.openWhatsApp(Strings.madheefPhoneNumber);
  }

  Future<void> openTelegramApp() async {
    // OpenLinks.openTelegram();
  }

}

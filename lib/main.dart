import 'package:doctor_app/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/datasource/Database/shared_preferences.dart';
import 'core/route/route.dart';
import 'features/locale_cubit.dart';
import 'features/patient/home/home_cubit.dart';

void main() async {

  await getItInit();
  WidgetsFlutterBinding.ensureInitialized();

  String? language = await SharedPreferencesLocale().instanceSharedPreferences();
  LocaleCubit localeCubit = LocaleCubit(Locale(language) );
  HomeCubit contactUsMRZCubit = HomeCubit(localeCubit);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => HomeCubit(localeCubit),
      ),
      // BlocProvider<LocaleCubit>(
      //   create: (_) => localeCubit,
      // ),
      // BlocProvider(
      //   create: (context) => resultMRZCubitMl,
      // ),

    ],
    child: MyApp(language),
  ));}

class MyApp extends StatefulWidget {
  final String? language;

  MyApp(this.language);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'DeepSense',
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          // fillColor: Color(0xffF2F2F7),
          filled: true,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color.fromRGBO(60, 60, 67, 0.3),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
      locale: const Locale('fa', 'IR'),

      routerConfig: router,
    );

  }
}

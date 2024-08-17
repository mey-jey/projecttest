
import 'package:doctor_app/features/patient/appointments/appointments.dart';
import 'package:doctor_app/features/patient/electronic_file/electronic_file.dart';
import 'package:doctor_app/features/patient/home/home.dart';
import 'package:doctor_app/features/patient/notifications/notifications.dart';
import 'package:doctor_app/features/patient/profile/profile.dart';
import 'package:doctor_app/features/patient/reservation/choose_data.dart';
import 'package:doctor_app/features/patient/search/search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/navbar.dart';
import '../../features/patient/reservation/reservation.dart';
import '../../features/patient/reservation/reservation_confirmation.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/reservation',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return  Home();
      },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'detailLogin',
      //     builder: (BuildContext context, GoRouterState state) {
      //       return const DetailLoginScreen();
      //     },
      //   ),
      // ],
    ),
    GoRoute(
      path: '/chooseDate',
      builder: (BuildContext context, GoRouterState state) {
        return  const ChooseData();
      },
    ),

    // GoRoute(
    //   name: "Reservation",
    //   path: '/Reservation',
    //   builder: (BuildContext context, GoRouterState state) {
    //     // final search = state.queryParams['text'];
    //     // context.goNamed("test", queryParams: {"email": "example@gmail.com", "age": "25"}),
    //
    //     // return const ScanResultPageMl(text: text, imeiText: imeiText
    //     // , publicIp: publicIp, dineInOrTakeAway: dineInOrTakeAway
    //     // , selectedDate: selectedDate, resultString: resultString);
    //     return   Reservation(
    //       // text: state.uri.queryParameters['text']??[],
    //       // imeiText: state.uri.queryParameters['imeiText']??"",
    //       // publicIp: state.uri.queryParameters['publicIp']??"",
    //       // dineInOrTakeAway: state.uri.queryParameters["dineInOrTakeAway"]??"" ,
    //       // selectedDateBaseLocale: state.uri.queryParameters['selectedDateBaseLocale']??"",
    //       // selectedDateTime: state.uri.queryParameters['selectedDateTime']??"",
    //       // resultString: state.uri.queryParameters['resultString']??"error string",
    //     );
    //   },
    // ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return ScaffoldBottomNavigationBar(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "search",
              path: '/search',
              builder: (BuildContext context, GoRouterState state) {
                return Search();
              },
            ),
          ],
        ),

        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "reservation",
              path: '/reservation',
              builder: (BuildContext context, GoRouterState state) {
                // return const RootScreen(
                //   label: 'Section B',
                //   detailsPath: '/sectionB/details',
                // );
                return Reservation();

              },
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'details',
              //     builder: (BuildContext context, GoRouterState state) {
              //       return const DetailsScreen(label: 'B');
              //     },
              //   ),
              // ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "profile",
              path: '/profile',
              builder: (BuildContext context, GoRouterState state) {
                return Profile();
                // return const RootScreen(
                //   label: 'Section A',
                //   detailsPath: '/sectionA/details',
                // );
              },
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'details',
              //     builder: (BuildContext context, GoRouterState state) {
              //       return const DetailsScreen(label: 'A');
              //     },
              //   ),
              // ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "notifications",
              path: '/notifications',
              builder: (BuildContext context, GoRouterState state) {
                return Notifications();
                // return const RootScreen(
                //   label: 'Section A',
                //   detailsPath: '/sectionA/details',
                // );
              },
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'details',
              //     builder: (BuildContext context, GoRouterState state) {
              //       return const DetailsScreen(label: 'A');
              //     },
              //   ),
              // ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "electronic_file",
              path: '/electronic_file',
              builder: (BuildContext context, GoRouterState state) {
                return ElectronicFile();
                // return const RootScreen(
                //   label: 'Section A',
                //   detailsPath: '/sectionA/details',
                // );
              },
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'details',
              //     builder: (BuildContext context, GoRouterState state) {
              //       return const DetailsScreen(label: 'A');
              //     },
              //   ),
              // ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "appointments",
              path: '/appointments',
              builder: (BuildContext context, GoRouterState state) {
                return Appointments();
                // return const RootScreen(
                //   label: 'Section A',
                //   detailsPath: '/sectionA/details',
                // );
              },
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'details',
              //     builder: (BuildContext context, GoRouterState state) {
              //       return const DetailsScreen(label: 'A');
              //     },
              //   ),
              // ],
            ),
          ],
        ),

      ],
    ),
  ],
);





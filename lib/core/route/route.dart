import 'package:doctor_app/features/patient/appointments/appointments.dart';
import 'package:doctor_app/features/patient/electronic_file/electronic_file.dart';
import 'package:doctor_app/features/patient/home/home.dart';
import 'package:doctor_app/features/patient/notifications/notifications.dart';
import 'package:doctor_app/features/patient/profile/profile.dart';
import 'package:doctor_app/features/patient/reservation/choose_data/ui/choose_data.dart';
import 'package:doctor_app/features/patient/reservation/doctor_info_page.dart';
import 'package:doctor_app/features/patient/reservation/payment_failed_page.dart';
import 'package:doctor_app/features/patient/reservation/reserve_success/ui/payment_success_page.dart';
import 'package:doctor_app/features/patient/reservation/personal_info/ui/personal_info.dart';
import 'package:doctor_app/features/patient/search/pages/custom_serach.dart';
import 'package:doctor_app/features/patient/search/search.dart';
import 'package:doctor_app/features/patient/search_list/ui/search_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/navbar.dart';
import '../../features/patient/reservation/reservation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/reservation',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return Home();
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
      path: '/payment_failed_page',
      builder: (BuildContext context, GoRouterState state) {
        return const PaymentFailedPage();
      },
    ),
    GoRoute(
      path: '/payment_success_page',
      builder: (BuildContext context, GoRouterState state) {
        return const PaymentSuccessPage();
      },
    ),
    GoRoute(
      path: '/customSearch',
      builder: (BuildContext context, GoRouterState state) {
        return CustomSearch();
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
                routes: <RouteBase>[
                  GoRoute(
                      name: "search_list",
                      path: 'search_list',
                      builder: (BuildContext context, GoRouterState state) {
                        return SearchListPage();
                      },
                      routes: [
                        GoRoute(
                            name: "reservation_info",
                            path: ':id/:name',
                            builder:
                                (BuildContext context, GoRouterState state) {
                              return Reservation(
                                state.pathParameters["name"] ?? "no name",
                                state.pathParameters["id"] ?? "no id",
                              );
                            },
                            routes: [
                              GoRoute(
                                name: "choose_date",
                                path: 'choose_date',
                                builder: (BuildContext context,
                                    GoRouterState state) {
                                  final doctorId = GoRouterState.of(context)
                                      .pathParameters['id']!;
                                  final doctorName = GoRouterState.of(context)
                                      .pathParameters['name']!;
                                  return ChooseData(
                                      doctorId: doctorId,
                                      doctorName: doctorName);
                                },
                                routes: <RouteBase>[
                                  GoRoute(
                                    path: 'personal_info',
                                    name: "personal_info",
                                    builder: (BuildContext context,
                                        GoRouterState state) {
                                      final doctorId = GoRouterState.of(context)
                                          .pathParameters['id']!;
                                      final doctorName =
                                          GoRouterState.of(context)
                                              .pathParameters['name']!;
                                      return PersonalInfo(doctorId, doctorName);
                                    },
                                    routes: <RouteBase>[
                                      GoRoute(
                                        path: 'doctor_info_page',
                                        name: "doctor_info_page",
                                        builder: (BuildContext context,
                                            GoRouterState state) {
                                          final doctorId =
                                              GoRouterState.of(context)
                                                  .pathParameters['id']!;
                                          final doctorName =
                                              GoRouterState.of(context)
                                                  .pathParameters['name']!;
                                          return DoctorInfoPage(
                                              doctorId, doctorName);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ]),
                      ])
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: "reservation",
              path: '/reservation',
              builder: (BuildContext context, GoRouterState state) {
                return Reservation("no name", "no id");
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'choose_date',
                  builder: (BuildContext context, GoRouterState state) {
                    return ChooseData(
                      doctorId: "2",
                      doctorName: "doctor name",
                    );
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'personal_info',
                      builder: (BuildContext context, GoRouterState state) {
                        return PersonalInfo("2", "doctor name");
                      },
                      routes: <RouteBase>[
                        GoRoute(
                          path: 'doctor_info_page',
                          builder: (BuildContext context, GoRouterState state) {
                            return DoctorInfoPage("2", "doctor name");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
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

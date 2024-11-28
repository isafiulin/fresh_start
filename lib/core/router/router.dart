import 'package:flutter/material.dart';
import 'package:fresh_start/core/router/router_path.dart';
import 'package:fresh_start/core/utils/logger.dart';
import 'package:fresh_start/injectable.dart';
import 'package:fresh_start/presentation/feature/home/home_page.dart';
import 'package:fresh_start/presentation/feature/info/info_page.dart';
import 'package:fresh_start/presentation/feature/main_tab/main_tab_screen.dart';
import 'package:fresh_start/presentation/feature/profile/profile_page.dart';
import 'package:fresh_start/presentation/feature/splash/splash_page.dart';
import 'package:fresh_start/presentation/feature/statistics/statistics_page.dart';
import 'package:fresh_start/presentation/feature/welcome/language_page.dart';
import 'package:fresh_start/presentation/feature/welcome/onboarding_page.dart';
import 'package:fresh_start/presentation/feature/welcome/welcome_page.dart';
import 'package:fresh_start/presentation/widgets/hide_talker_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _tabANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'tabANav');

/// The route configuration.
final goRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        name: 'splash',
        path: RouterPath.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        }),
    GoRoute(
        name: RouterPath.language,
        path: RouterPath.language,
        builder: (BuildContext context, GoRouterState state) {
          return const LanguagePage();
        }),
    GoRoute(
        name: RouterPath.welcome,
        path: RouterPath.welcome,
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomePage();
        }),
    GoRoute(
        name: RouterPath.onboarding,
        path: RouterPath.onboarding,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingPage();
        }),

    // GoRoute(
    //     name: '/login_welcome',
    //     path: RouterPath.loginWelcome,
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const LoginWelcomeScreen();
    //     },
    //     routes: <RouteBase>[
    //       GoRoute(
    //           name: RouterPath.login,
    //           path: RouterPath.login,
    //           builder: (BuildContext context, GoRouterState state) {
    //             return const LoginMainScreen();
    //           },
    //           routes: <RouteBase>[
    //             GoRoute(
    //                 name: 'login_entercode',
    //                 path: RouterPath.loginEnterCode,
    //                 builder: (BuildContext context, GoRouterState state) {
    //                   return LoginEnterCodeScreen(
    //                     arguments: state.extra as LoginEnterCodeScreenArguments,
    //                   );
    //                 })
    //           ])
    //     ]),
    // GoRoute(
    //   name: 'registration_first',
    //   path: RouterPath.registrationFirst,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return RegistrationFirstScreen(
    //       arguments: state.extra as RegistrationFirstArguments,
    //     );
    //   },
    //   routes: <RouteBase>[
    //     GoRoute(
    //       name: 'registration_second',
    //       path: RouterPath.registrationSecond,
    //       builder: (BuildContext context, GoRouterState state) {
    //         return RegistrationSecondScreen(
    //           arguments: state.extra as RegistrationArguments,
    //         );
    //       },
    //       routes: <RouteBase>[
    //         GoRoute(
    //           name: 'registration_third',
    //           path: RouterPath.registrationThird,
    //           builder: (BuildContext context, GoRouterState state) {
    //             return RegistrationThirdScreen(
    //               arguments: state.extra as RegistrationArguments,
    //             );
    //           },
    //           routes: <RouteBase>[
    //             GoRoute(
    //               name: 'registration_fourth',
    //               path: RouterPath.registrationFourth,
    //               builder: (BuildContext context, GoRouterState state) {
    //                 return RegistrationFourthScreen(
    //                   arguments: state.extra as RegistrationArguments,
    //                 );
    //               },
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //     GoRoute(
    //       name: RouterPath.onboardingGBFirst,
    //       path: RouterPath.onboardingGBFirst,
    //       builder: (BuildContext context, GoRouterState state) {
    //         return const OnboardingOneGbScreen();
    //       },
    //       routes: <RouteBase>[
    //         GoRoute(
    //           name: RouterPath.onboardingGBSecond,
    //           path: RouterPath.onboardingGBSecond,
    //           builder: (BuildContext context, GoRouterState state) {
    //             return OnboardingSecondGbScreen(
    //               arguments: state.extra as OnboardingGbArguments,
    //             );
    //           },
    //         )
    //       ],
    //     ),
    //   ],
    // ),
    GoRoute(
        path: RouterPath.hideTalker,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final logger = getIt<Logger>();

          return HideTalkerPage(talker: logger.talker);
        }),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainTabScreen(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _tabANavigatorKey,
          routes: [
            GoRoute(
              path: RouterPath.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.statistics,
              builder: (context, state) {
                return const StatisticsPage();
              },
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/empty', builder: (context, state) => const SizedBox())
          ],
        ),
        StatefulShellBranch(routes: [
          GoRoute(
            path: RouterPath.info,
            builder: (context, state) => const InfoPage(),
          )
        ]),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.profile,
              builder: (context, state) => const ProfilePage(),
            )
          ],
        )
      ],
    )
  ],
);

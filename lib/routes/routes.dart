import 'package:afno_app/core/widgets/bottom_navigation/custom_bottom_nav.dart';
import 'package:afno_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:afno_app/features/splash/presentation/pages/splash_page.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

class Routes {
  static final GoRouter router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: (kIsWeb)
          ? (Uri.base.toString().replaceFirst(Uri.base.origin, ''))
          : RoutesConstant.splash,
      routes: <RouteBase>[
        GoRoute(
          path: RoutesConstant.splash,
          builder: (context, state) => const SplashPage(),
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return CustomBottomNavigationBar(child: child);
          },
          routes: [
            GoRoute(
              path: RoutesConstant.dashboard,
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
      ]);
}

// _customAnimation(context, state, child) {
//   return CustomTransitionPage(
//     key: state.pageKey,
//     child: child,
//     transitionDuration: const Duration(milliseconds: 0),
//     transitionsBuilder: (BuildContext context, Animation<double> animation,
//         Animation<double> secondaryAnimation, Widget child) {
//       // Change the opacity of the screen using a Curve based on the the animation's
//       // value
//       return FadeTransition(
//         opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
//         child: child,
//       );
//     },
//   );
// }

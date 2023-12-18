import 'package:afno_app/core/widgets/bottom_navigation/custom_bottom_nav.dart';
import 'package:afno_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:afno_app/features/favourite/presentation/pages/favourite.dart';
import 'package:afno_app/features/login/presentation/pages/login_page.dart';
import 'package:afno_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:afno_app/features/restaurant/presentation/pages/restaurant_page.dart';
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
          pageBuilder: (context, state) =>
              _customAnimation(context, state, const SplashPage()),
        ),
        GoRoute(
          path: RoutesConstant.onboarding,
          pageBuilder: (context, state) =>
              _customAnimation(context, state, OnboardingPage()),
        ),
        GoRoute(
          path: RoutesConstant.login,
          pageBuilder: (context, state) =>
              _customAnimation(context, state, const LoginPage()),
        ),
        GoRoute(
          path: "${RoutesConstant.restaurant}/:id",
          pageBuilder: (context, state) => _customAnimation(context, state,
              RestaurantPage(id: state.pathParameters['id'] ?? "")),
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return CustomBottomNavigationBar(child: child);
          },
          routes: [
            GoRoute(
              path: RoutesConstant.dashboard,
              pageBuilder: (context, state) =>
                  _customAnimation(context, state, const DashboardPage()),
            ),
            GoRoute(
              path: RoutesConstant.fav,
              pageBuilder: (context, state) =>
                  _customAnimation(context, state, const FavouritePage()),
            ),
          ],
        ),
      ]);
}

_customAnimation(context, state, child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 4),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      // Change the opacity of the screen using a Curve based on the the animation's
      // value
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
        child: child,
      );
    },
  );
}

import 'package:afno_app/core/shared_pref/shared_pref.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (await SharedPrefService.getToken(SharedPrefKey.firstLogin) !=
          "false") {
        context.go(RoutesConstant.onboarding);
      } else {
        context.go(RoutesConstant.dashboard);
      }
      // context
      //     .read<RestaurantBloc>()
      //     .add(const RestaurantEvent.getRestaurants());
    });
    print("going to dashboard now.........");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "AFNO APP",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        SizedBox(
          width: 200.0,
          child: LinearProgressIndicator(),
        ),
      ],
    ))));
  }
}

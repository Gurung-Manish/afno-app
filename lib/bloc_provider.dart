import 'package:afno_app/App.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:afno_app/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderContainer extends StatelessWidget {
  const BlocProviderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<SplashBloc>(
        create: (BuildContext context) => SplashBloc(),
      ),
      BlocProvider<RestaurantBloc>(
        create: (BuildContext context) => RestaurantBloc(),
      ),
    ], child: const App());
  }
}

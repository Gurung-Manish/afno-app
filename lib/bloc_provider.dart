import 'package:afno_app/App.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderContainer extends StatelessWidget {
  const BlocProviderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [], child: const App());
  }
}

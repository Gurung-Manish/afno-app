import 'package:afno_app/features/dashboard/presentation/widgets/bottom_dashboard_view.dart';
import 'package:afno_app/features/dashboard/presentation/widgets/dashboard_map_view.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context
          .read<RestaurantBloc>()
          .add(const RestaurantEvent.getRestaurants());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Flexible(flex: 1, child: DashboardMapView()),
        BottomDashboardView(),
      ],
    );
  }
}

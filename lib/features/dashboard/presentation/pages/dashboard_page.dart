import 'package:afno_app/features/dashboard/presentation/widgets/bottom_dashboard_view.dart';
import 'package:afno_app/features/dashboard/presentation/widgets/dashboard_map_view.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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

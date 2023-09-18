import 'package:afno_app/features/dashboard/presentation/widgets/bottom_dashboard_view.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: const Center(
                      child: Text("Map"),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: BottomDashboardView(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

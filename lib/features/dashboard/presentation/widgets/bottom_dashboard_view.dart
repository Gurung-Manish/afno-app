import 'package:flutter/material.dart';

class BottomDashboardView extends StatelessWidget {
  const BottomDashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 200,
      ),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: const Center(
        child: Text(
          'List views',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

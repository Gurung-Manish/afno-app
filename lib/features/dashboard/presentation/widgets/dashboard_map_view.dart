import 'dart:async';

import 'package:afno_app/core/widgets/google_map_widget/google_map_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DashboardMapView extends StatefulWidget {
  const DashboardMapView({
    super.key,
  });

  @override
  State<DashboardMapView> createState() => _DashboardMapViewState();
}

class _DashboardMapViewState extends State<DashboardMapView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    tilt: 59.440717697143555,
    target: LatLng(51.50, 0.127),
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: GoogleMapWidget(
              kGooglePlex: _kGooglePlex, controller: _controller),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Search...",
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

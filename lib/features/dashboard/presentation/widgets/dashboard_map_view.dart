import 'dart:async';
import 'dart:math';

import 'package:afno_app/core/widgets/google_map_widget/google_map_widget.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location_package;
import 'package:location/location.dart';

class DashboardMapView extends StatefulHookWidget {
  final List<RestaurantModel> restaurants;

  const DashboardMapView({
    super.key,
    required this.restaurants,
  });

  @override
  State<DashboardMapView> createState() => _DashboardMapViewState();
}

class _DashboardMapViewState extends State<DashboardMapView> {
  late location_package.LocationData myLocation;
  late GoogleMapController controller;

  List<Marker> markers = <Marker>[];
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Map<String, dynamic> dataMap = {
    "latitude": 37.7749,
    "longitude": -122.4194,
  };

  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(51.50, 0.127),
    zoom: 14,
  );

  //getting user location
  Future<location_package.LocationData> getUserCurrentLocation() async {
    try {
      location_package.Location location = location_package.Location();

      bool serviceEnabled;
      location_package.PermissionStatus permissionGranted;
      location_package.LocationData locationData;

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          // return LocationData;
        }
      }

      permissionGranted = await location.hasPermission();
      if (permissionGranted == location_package.PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != location_package.PermissionStatus.granted) {
          // return;
        }
      }

      locationData = await location.getLocation();
      return locationData;
    } catch (e) {
      Map<String, dynamic> dataMap = {
        "latitude": 37.7749,
        "longitude": -122.4194,
        "accuracy": 16.0,
        "altitude": 0.0,
        "speed": 0.0,
        "speed_accuracy": 0.0,
        "heading": 0.0,
        "time": 1679467315000,
        "is_mock": false,
      };
      return location_package.LocationData.fromMap(dataMap);
    }
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      List<Marker> newMarkers = <Marker>[];
      for (var restaurant in widget.restaurants) {
        newMarkers.add(Marker(
          markerId: MarkerId(restaurant.id.toString()),
          position: LatLng(
            double.tryParse(restaurant.latitude ?? "") ?? 0.0,
            double.tryParse(restaurant.longitude ?? "") ?? 0.0,
          ),
          infoWindow: InfoWindow(
            title: restaurant.title ?? "Marker",
          ),
        ));
      }

      setState(() {
        markers = newMarkers;
      });
      return null;
    }, [widget.restaurants]);
    return Center(
      child: GoogleMapWidget(
          kGooglePlex: _kLake, controller: _controller, markers: markers),
    );
  }
}

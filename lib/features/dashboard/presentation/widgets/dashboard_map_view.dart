import 'dart:async';

import 'package:afno_app/core/widgets/google_map_widget/google_map_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location_package;
import 'package:location/location.dart';

class DashboardMapView extends StatefulWidget {
  const DashboardMapView({
    super.key,
  });

  @override
  State<DashboardMapView> createState() => _DashboardMapViewState();
}

class _DashboardMapViewState extends State<DashboardMapView> {
  late LocationData localVal;
  late location_package.LocationData myLocation;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(51.50, 0.127),
  //   zoom: 14.4746,
  // );
  Map<String, dynamic> dataMap = {
    "latitude": 37.7749,
    "longitude": -122.4194,
  };

  static const CameraPosition _kLake = CameraPosition(
    // bearing: 192.8334901395799,
    // tilt: 59.440717697143555,
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
  void initState() {
    super.initState();
    localVal = LocationData.fromMap(dataMap);
    getUserCurrentLocation().then((value) async {
      // markers.add(Marker(
      //   markerId: const MarkerId("2"),
      //   position: LatLng(value.latitude ?? 0, value.longitude ?? 0),
      // ));
      localVal = value;
      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      print("${value.latitude}  ${value.longitude}");
      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      CameraPosition cameraPosition = CameraPosition(
        target: LatLng(value.latitude ?? 0, value.longitude ?? 0),
        zoom: 14,
      );

      final GoogleMapController controller = await _controller.future;

      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: GoogleMapWidget(kGooglePlex: _kLake, controller: _controller),
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
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    filled: true,
                    isDense: true,
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 34,
                    ),
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    contentPadding: EdgeInsets.only(
                      top: 14.0,
                      right: 16.0,
                      bottom: 14.0,
                    ),
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

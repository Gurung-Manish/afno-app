import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:location/location.dart' as location_package;

class GoogleMapNoRangeWidget extends StatefulWidget {
  const GoogleMapNoRangeWidget({
    super.key,
    required CameraPosition kGooglePlex,
    required Completer<GoogleMapController> controller,
    required this.markers,
  })  : _kGooglePlex = kGooglePlex,
        _controller = controller;

  final CameraPosition _kGooglePlex;
  final Completer<GoogleMapController> _controller;
  final List<Marker> markers;

  @override
  State<GoogleMapNoRangeWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapNoRangeWidget> {
  late LocationData localVal;
  late location_package.LocationData myLocation;
  double currentSliderValue = 10000;
  Map<String, dynamic> dataMap = {
    "latitude": 37.7749,
    "longitude": -122.4194,
  };
  Set<Circle> circles = {};
  bool isMarkerInsideCircle(LatLng markerPosition) {
    double distance = calculateDistance(
        LatLng(localVal.latitude ?? 0, localVal.longitude ?? 0),
        markerPosition);
    return distance <= currentSliderValue;
  }

  double calculateDistance(LatLng p1, LatLng p2) {
    // Haversine formula to calculate the distance between two points
    double lat1 = p1.latitude;
    double lon1 = p1.longitude;
    double lat2 = p2.latitude;
    double lon2 = p2.longitude;

    double dLat = (lat2 - lat1) * (pi / 180.0);
    double dLon = (lon2 - lon1) * (pi / 180.0);

    double a = pow(sin(dLat / 2), 2) +
        cos(lat1 * (pi / 180.0)) *
            cos(lat2 * (pi / 180.0)) *
            pow(sin(dLon / 2), 2);
    double c = 2 * asin(sqrt(a));
    double radius = 6371000; // Earth's radius in meters
    return radius * c;
  }

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
    // TODO: implement initState
    localVal = LocationData.fromMap(dataMap);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: widget._kGooglePlex,
          myLocationEnabled: true,
          compassEnabled: true,
          // circles: circles,
          markers: widget.markers
              .where((marker) => isMarkerInsideCircle(marker.position))
              .toSet(),
          onMapCreated: (GoogleMapController mcController) async {
            // if (!kIsWeb) {

            localVal = LocationData.fromMap(dataMap);

            // }
            getUserCurrentLocation().then((value) async {
              // markers.add(Marker(
              //   markerId: const MarkerId("2"),
              //   position: LatLng(value.latitude ?? 0, value.longitude ?? 0),
              // ));
              localVal = value;
              CameraPosition cameraPosition = CameraPosition(
                target: LatLng(value.latitude ?? 0, value.longitude ?? 0),
                zoom: 14,
              );
              circles = {
                Circle(
                  circleId: const CircleId("MY"),
                  center: LatLng(value.latitude ?? 0, value.longitude ?? 0),
                  radius: currentSliderValue,
                  strokeColor: Colors.blue,
                  strokeWidth: 2,
                  fillColor: Colors.blue.withOpacity(0.3),
                )
              };
              setState(() {});
              mcController.animateCamera(
                  CameraUpdate.newCameraPosition(cameraPosition));
            }).then((value) {
              // controller.dispose();
              widget._controller.complete(mcController);
            });
          },
        ),
      ],
    );
  }
}

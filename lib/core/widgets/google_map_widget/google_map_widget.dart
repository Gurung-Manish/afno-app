import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
    required CameraPosition kGooglePlex,
    required Completer<GoogleMapController> controller,
  })  : _kGooglePlex = kGooglePlex,
        _controller = controller;

  final CameraPosition _kGooglePlex;
  final Completer<GoogleMapController> _controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kGooglePlex,
      myLocationEnabled: true,
      compassEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        if (!kIsWeb) {
          _controller.complete(controller);
        }
      },
    );
  }
}

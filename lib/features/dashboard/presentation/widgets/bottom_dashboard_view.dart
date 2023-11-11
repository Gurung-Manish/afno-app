import 'package:afno_app/features/dashboard/presentation/widgets/restaurant_list_card_widget.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loading_skeleton_niu/loading_skeleton.dart';
import 'package:location/location.dart' as location_package;
import 'dart:math';
import 'package:location/location.dart';

class BottomDashboardView extends StatefulHookWidget {
  final List<RestaurantModel> restaurants;
  const BottomDashboardView({
    super.key,
    required this.restaurants,
  });

  @override
  State<BottomDashboardView> createState() => _BottomDashboardViewState();
}

class _BottomDashboardViewState extends State<BottomDashboardView>
    with TickerProviderStateMixin {
  List<RestaurantModel> nearbyRestaurants = [];
  location_package.LocationData myLocation = LocationData.fromMap({
    "latitude": 37.7749,
    "longitude": -122.4194,
  });
  bool isMylocationSet = false;
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

  late TabController _tabController;
  int _selectedTabIndex = 0; // Added to keep track of the selected tab index
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double R = 6371.0; // Radius of the Earth in kilometers
    // Calculate the differences in coordinates
    double dlat = lat2 - lat1;
    double dlon = lon2 - lon1;

    // Haversine formula
    double a =
        pow(sin(dlat / 2), 2) + cos(lat1) * cos(lat2) * pow(sin(dlon / 2), 2);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    // Calculate the distance
    double distance = R * c;

    return distance;
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      setState(() {
        nearbyRestaurants = widget.restaurants;
      });
      getUserCurrentLocation().then((value) async {
        myLocation = value;
        List<RestaurantModel> newList = widget.restaurants.map((e) {
          double distance = calculateDistance(
              double.parse(e.latitude ?? "0"),
              double.parse(e.longitude ?? "0"),
              double.parse(myLocation.latitude.toString()),
              double.parse(myLocation.longitude.toString()));
          return e.copyWith(distance: distance);
        }).toList();
        newList.sort((a, b) => a.distance!.compareTo(b.distance ?? 0));

        setState(() {
          nearbyRestaurants = newList;
          isMylocationSet = true;
        });
      });
      return null;
    }, [widget.restaurants]);
    return Container(
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
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Text(
              "Nearby Restaurants (${nearbyRestaurants.length})",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 35,
                    width: 150,
                    child: TabBar(
                      controller: _tabController,
                      onTap: (value) => {
                        setState(() {
                          _selectedTabIndex = value;
                        })
                      },
                      tabs: const [
                        Tab(
                          icon: Icon(
                            Icons.vertical_distribute_rounded,
                            size: 17,
                          ), // Icon for Filter 1
                        ),
                        Tab(
                          icon: Icon(
                            Icons.grid_4x4,
                            size: 17,
                          ), // Icon for Filter 2
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _selectedTabIndex == 0
                  ? SizedBox(
                      height: 300,
                      child: nearbyRestaurants.isNotEmpty
                          ? ListView.builder(
                              itemCount: nearbyRestaurants.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                RestaurantModel restaurant =
                                    nearbyRestaurants[index];
                                // Apply Filter 1
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: RestaurantListCardWidget(
                                    restaurant: restaurant,
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),
                    )
                  :

                  // Filter 2 View
                  nearbyRestaurants.isNotEmpty
                      ? GridView.extent(
                          maxCrossAxisExtent: 360,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: List.generate(
                            nearbyRestaurants.length,
                            (index) {
                              final restaurant = nearbyRestaurants[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RestaurantListCardWidget(
                                  restaurant: restaurant,
                                ),
                              );
                            },
                          ),
                        )
                      : const SizedBox(),
              const SizedBox(
                height: 10,
              )
            ],
          )
        ]));
  }
}
